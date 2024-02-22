--liquibase formatted sql

--changeset boyd.timmerman:1 runOnChange:true

create index customers_name_i on
   customers (
      full_name
   );

--rollback: drop index customers_name_i;