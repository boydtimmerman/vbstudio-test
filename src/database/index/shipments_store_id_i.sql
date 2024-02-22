--liquibase formatted sql

--changeset boyd.timmerman:1

create index shipments_store_id_i on
   shipments (
      store_id
   );
   
--rollback: drop index shipments_store_id_i;