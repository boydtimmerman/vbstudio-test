--liquibase formatted sql

--changeset boyd.timmerman:1

create index inventory_product_id_i on
   inventory (
      product_id
   );
   
--rollback: drop index inventory_product_id_i;