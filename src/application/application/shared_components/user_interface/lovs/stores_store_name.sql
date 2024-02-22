prompt --application/shared_components/user_interface/lovs/stores_store_name
begin
--   Manifest
--     STORES.STORE_NAME
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
 p_id=>wwv_flow_imp.id(9961403127640334)
,p_lov_name=>'STORES.STORE_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'STORES'
,p_return_column_name=>'STORE_ID'
,p_display_column_name=>'STORE_NAME'
,p_default_sort_column_name=>'STORE_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
