--liquibase formatted sql

--changeset boyd.timmerman:1 runOnChange:true

create or replace package body ut_utils as
------------------------------------------------------------------------------
-- utPLSQL test package voor utils
------------------------------------------------------------------------------
    procedure val_emailadres 
    is
    begin
        ut.expect(utils.validate_email(p_emailadres => 'unit.tester@example.com')).to_be_true();
        ut.expect(utils.validate_email(p_emailadres => 'unit.tester@example.com')).to_be_true();
        ut.expect(utils.validate_email(p_emailadres => 'unittester')).to_be_false();
        ut.expect(utils.validate_email(p_emailadres => 'unittester@@example.')).to_be_false();
        ut.expect(utils.validate_email(p_emailadres => null)).to_be_null();
    end val_emailadres;
  
    procedure val_date 
    is
    begin
        ut.expect(utils.validate_date(p_date => '01-01-2024')).to_be_true();
        ut.expect(utils.validate_date(p_date => '31-12-1999')).to_be_true();
         ut.expect(utils.validate_date(p_date => '01012024')).to_be_true();
        ut.expect(utils.validate_date(p_date => '2024-01-01')).to_be_false();
        ut.expect(utils.validate_date(p_date => 'abcdefg')).to_be_false();
        ut.expect(utils.validate_date(p_date => '123456789')).to_be_false();       
        ut.expect(utils.validate_date(p_date => null)).to_be_true();
    end val_date;
  
    procedure val_number
    is
    begin
        ut.expect(utils.validate_number(p_number => '123456789')).to_be_true();
        ut.expect(utils.validate_number(p_number => '01012024')).to_be_true();
        ut.expect(utils.validate_number(p_number => '0.02')).to_be_true();
        ut.expect(utils.validate_number(p_number => 'abcdefg')).to_be_false();
        ut.expect(utils.validate_number(p_number => '1.0e')).to_be_false();
        ut.expect(utils.validate_number(p_number => null)).to_be_true();
    end val_number;  
end ut_utils;