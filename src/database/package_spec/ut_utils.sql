--liquibase formatted sql

--changeset boyd.timmerman:1 runOnChange:true
create or replace package ut_utils as
    ------------------------------------------------------------------------------
  -- utPLSQL test package voor utils
  ------------------------------------------------------------------------------
  --%suite
  
  --%test
  procedure val_emailadres;
  
  --%test
  procedure val_date;
  
  --%test
  procedure val_number;
  
end ut_utils;