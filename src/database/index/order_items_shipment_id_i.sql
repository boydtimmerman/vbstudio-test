--liquibase formatted sql

--changeset boyd.timmerman:1

create index order_items_shipment_id_i on
   order_items (
      shipment_id
   );
   
--rollback: drop index order_items_shipment_id_i;