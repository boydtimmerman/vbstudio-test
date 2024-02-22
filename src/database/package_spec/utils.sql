--liquibase formatted sql

--changeset boyd.timmerman:1 runOnChange:true

create or replace package utils as

    function validate_email(
        p_emailadres in varchar2
    ) return boolean;
    
    function validate_date(
        p_date in varchar2
    ) return boolean;
    
    function validate_number(
        p_number in varchar2
    ) return boolean;
    
end utils;
/