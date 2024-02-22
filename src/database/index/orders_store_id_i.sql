--liquibase formatted sql

--changeset boyd.timmerman:1

create index orders_store_id_i on
   orders (
      store_id
   );
   
--rollback: drop index orders_store_id_i;