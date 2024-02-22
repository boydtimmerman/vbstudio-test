prompt --application/shared_components/navigation/lists/page_navigation
begin
--   Manifest
--     LIST: Page Navigation
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.3'
,p_default_workspace_id=>9630700619858903
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'CICD_DEV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(9986927841640373)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9987398440640373)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9987707144640374)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-clipboard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
