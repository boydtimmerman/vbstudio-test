prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.3'
,p_default_workspace_id=>9630700619858903
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'CICD_DEV'
);
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Customers'
,p_alias=>'CUSTOMERS'
,p_step_title=>'Customers'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_last_updated_by=>'CICD_DEV'
,p_last_upd_yyyymmddhh24miss=>'20240221130623'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9954005481639691)
,p_plug_name=>'Customers'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CUSTOMERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Customers'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9954179179639691)
,p_name=>'Customers'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'CUSTOMER_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP:P3_CUSTOMER_ID:\#CUSTOMER_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'CICD_DEV'
,p_internal_uid=>9954179179639691
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9954595372639695)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Customer ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9954936503639697)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Email Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9955302437639697)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9973223611640352)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'99733'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMAIL_ADDRESS:FULL_NAME'
,p_sort_column_1=>'EMAIL_ADDRESS'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9957034230639700)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9759884189639262)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9644160263639188)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9822244293639300)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9955827394639698)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9954005481639691)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9820622506639299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9956144154639698)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9954005481639691)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9956605777639699)
,p_event_id=>wwv_flow_imp.id(9956144154639698)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9954005481639691)
);
wwv_flow_imp.component_end;
end;
/
