prompt --application/shared_components/user_interface/lovs/customers_email_address
begin
--   Manifest
--     CUSTOMERS.EMAIL_ADDRESS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.3'
,p_default_workspace_id=>9630700619858903
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'CICD_DEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9960458141640331)
,p_lov_name=>'CUSTOMERS.EMAIL_ADDRESS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CUSTOMERS'
,p_return_column_name=>'CUSTOMER_ID'
,p_display_column_name=>'EMAIL_ADDRESS'
,p_default_sort_column_name=>'EMAIL_ADDRESS'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
