--liquibase formatted sql

--changeset boyd.timmerman:1 runOnChange:true

create or replace view product_reviews as
   select p.product_name,
          r.rating,
          ROUND(
             avg(r.rating)
             over(partition by product_name),
             2
          ) avg_rating,
          r.review
     from products p,
          json_table ( p.product_details, '$'
             columns (
                nested path '$.reviews[*]'
                   columns (
                      rating integer path '$.rating',
                      review varchar2 ( 4000 ) path '$.review'
                   )
             )
          )
       r;

--rollback: drop view product_reviews;