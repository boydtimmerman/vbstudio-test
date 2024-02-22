--liquibase formatted sql

--changeset boyd.timmerman:1
alter table order_items
   add constraint order_items_order_id_fk foreign key ( order_id )
      references orders ( order_id );

alter table order_items
   add constraint order_items_shipment_id_fk foreign key ( shipment_id )
      references shipments ( shipment_id );

alter table order_items
   add constraint order_items_product_id_fk foreign key ( product_id )
      references products ( product_id );