--liquibase formatted sql

--changeset boyd.timmerman:1 runOnChange:true

create or replace view store_orders as
   select case grouping_id(store_name,
                           order_status)
      when 1 then
         'STORE TOTAL'
      when 2 then
         'STATUS TOTAL'
      when 3 then
         'GRAND TOTAL'
          end total,
          s.store_name,
          COALESCE(
             s.web_address,
             s.physical_address
          ) address,
          s.latitude,
          s.longitude,
          o.order_status,
          count(distinct o.order_id) order_count,
          sum(oi.quantity * oi.unit_price) total_sales
     from stores s
     join orders o
   on s.store_id = o.store_id
     join order_items oi
   on o.order_id = oi.order_id
    group by grouping sets ( ( s.store_name,
                               COALESCE(
                                  s.web_address,
                                  s.physical_address
                               ),
                               s.latitude,
                               s.longitude ), ( s.store_name,
                                                COALESCE(
                                                   s.web_address,
                                                   s.physical_address
                                                ),
                                                s.latitude,
                                                s.longitude,
                                                o.order_status ),
   o.order_status, ( ) );

--rollback: drop view store_orders;