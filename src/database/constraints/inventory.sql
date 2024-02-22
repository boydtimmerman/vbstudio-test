--liquibase formatted sql

--changeset boyd.timmerman:1
alter table inventory
   add constraint inventory_store_id_fk foreign key ( store_id )
      references stores ( store_id );

alter table inventory
   add constraint inventory_product_id_fk foreign key ( product_id )
      references products ( product_id );