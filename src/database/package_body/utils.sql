--liquibase formatted sql

--changeset boyd.timmerman:1 runOnChange:true

create or replace package body utils as

    function validate_email(
        p_emailadres in varchar2
    ) return boolean
    is
        l_valid boolean := false;
    begin
       l_valid :=  regexp_like(p_emailadres, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$');
       
       return l_valid;
    end validate_email;
        
    function validate_date(
        p_date in varchar2
    ) return boolean
    is
        l_valid number;
    begin
        l_valid := validate_conversion(p_date as date, 'dd-mm-yyyy');
        
        return (l_valid = 1);
    end validate_date;
    
    function validate_number(
        p_number in varchar2
    ) return boolean
    is
        l_valid number;
    begin
        l_valid := validate_conversion(p_number as number);
        
        return (l_valid = 1);
    end validate_number;
    
end utils;
/