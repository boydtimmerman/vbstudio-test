--liquibase formatted sql

--changeset boyd.timmerman:1 runOnChange:true

create or replace view customer_order_products as
   select o.order_id,
          o.order_tms,
          o.order_status,
          c.customer_id,
          c.email_address,
          c.full_name,
          sum(oi.quantity * oi.unit_price) order_total,
          listagg(p.product_name,
                  ', ' on overflow truncate '...' with count) within group(
           order by oi.line_item_id) items
     from orders o
     join order_items oi
   on o.order_id = oi.order_id
     join customers c
   on o.customer_id = c.customer_id
     join products p
   on oi.product_id = p.product_id
    group by o.order_id,
             o.order_tms,
             o.order_status,
             c.customer_id,
             c.email_address,
             c.full_name;

--rollback: drop view customer_order_products;