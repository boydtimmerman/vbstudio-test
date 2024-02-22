--liquibase formatted sql

--changeset boyd.timmerman:1

create index orders_customer_id_i on
   orders (
      customer_id
   );

--rollback: drop index orders_customer_id_i;