--liquibase formatted sql

--changeset boyd.timmerman:1
alter table shipments
   add constraint shipments_store_id_fk foreign key ( store_id )
      references stores ( store_id );

alter table shipments
   add constraint shipments_customer_id_fk foreign key ( customer_id )
      references customers ( customer_id );