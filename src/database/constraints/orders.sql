--liquibase formatted sql

--changeset boyd.timmerman:1
alter table orders
   add constraint orders_customer_id_fk foreign key ( customer_id )
      references customers ( customer_id );
      
alter table orders
   add constraint orders_store_id_fk foreign key ( store_id )
      references stores ( store_id );