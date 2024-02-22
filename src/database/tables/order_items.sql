--liquibase formatted sql

--changeset boyd.timmerman:1

create table order_items (
   order_id     integer not null,
   line_item_id integer not null,
   product_id   integer not null,
   unit_price   number(10, 2) not null,
   quantity     integer not null,
   shipment_id  integer
);

alter table order_items add constraint order_items_pk primary key ( order_id,
                                                                    line_item_id );

alter table order_items add constraint order_items_product_u unique ( product_id,
                                                                      order_id );

--rollback: drop table order_items;