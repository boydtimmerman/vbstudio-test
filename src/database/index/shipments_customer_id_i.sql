--liquibase formatted sql

--changeset boyd.timmerman:1

create index shipments_customer_id_i on
   shipments (
      customer_id
   );
   
--rollback: drop index shipments_customer_id_i;