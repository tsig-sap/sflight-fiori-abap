class ZCL_ZUI_FLIGHT_V2_MPC definition
  public
  inheriting from /IWBEP/CL_MGW_PUSH_ABS_MODEL
  create public .

public section.

  interfaces IF_SADL_GW_MODEL_EXPOSURE_DATA .

  types:
    begin of TS_I_CURRENCYTYPE.
      include type I_CURRENCY.
  types:
      T_CURRENCY type I_CURRENCYTEXT-CURRENCYNAME,
    end of TS_I_CURRENCYTYPE .
  types:
   TT_I_CURRENCYTYPE type standard table of TS_I_CURRENCYTYPE .
  types:
    begin of TS_ZC_BOOKING_V2TYPE.
      include type ZC_BOOKING_V2.
  types:
    end of TS_ZC_BOOKING_V2TYPE .
  types:
   TT_ZC_BOOKING_V2TYPE type standard table of TS_ZC_BOOKING_V2TYPE .
  types:
    begin of TS_ZC_FLIGHT_V2TYPE.
      include type ZC_FLIGHT_V2.
  types:
      T_AIRLINE type ZI_AIRLINE-AIRLINENAME,
    end of TS_ZC_FLIGHT_V2TYPE .
  types:
   TT_ZC_FLIGHT_V2TYPE type standard table of TS_ZC_FLIGHT_V2TYPE .
  types:
    begin of TS_ZC_VH_FLIGHTNUMBERTYPE.
      include type ZC_VH_FLIGHTNUMBER.
  types:
    end of TS_ZC_VH_FLIGHTNUMBERTYPE .
  types:
   TT_ZC_VH_FLIGHTNUMBERTYPE type standard table of TS_ZC_VH_FLIGHTNUMBERTYPE .
  types:
    begin of TS_ZI_AIRLINETYPE.
      include type ZI_AIRLINE.
  types:
    end of TS_ZI_AIRLINETYPE .
  types:
   TT_ZI_AIRLINETYPE type standard table of TS_ZI_AIRLINETYPE .

  constants GC_I_CURRENCYTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'I_CurrencyType' ##NO_TEXT.
  constants GC_ZC_BOOKING_V2TYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZC_Booking_V2Type' ##NO_TEXT.
  constants GC_ZC_FLIGHT_V2TYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZC_Flight_V2Type' ##NO_TEXT.
  constants GC_ZC_VH_FLIGHTNUMBERTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZC_VH_FlightNumberType' ##NO_TEXT.
  constants GC_ZI_AIRLINETYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZI_AirlineType' ##NO_TEXT.

  methods DEFINE
    redefinition .
  methods GET_LAST_MODIFIED
    redefinition .
protected section.
private section.

  methods DEFINE_RDS_4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods GET_LAST_MODIFIED_RDS_4
    returning
      value(RV_LAST_MODIFIED_RDS) type TIMESTAMP .
ENDCLASS.



CLASS ZCL_ZUI_FLIGHT_V2_MPC IMPLEMENTATION.


  method DEFINE.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*

model->set_schema_namespace( 'ZUI_FLIGHT_V2_SRV' ).

define_rds_4( ).
get_last_modified_rds_4( ).
  endmethod.


  method DEFINE_RDS_4.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS          &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL   &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                    &*
*&                                                                     &*
*&---------------------------------------------------------------------*
*   This code is generated for Reference Data Source
*   4
*&---------------------------------------------------------------------*
    TRY.
        if_sadl_gw_model_exposure_data~get_model_exposure( )->expose( model )->expose_vocabulary( vocab_anno_model ).
      CATCH cx_sadl_exposure_error INTO DATA(lx_sadl_exposure_error).
        RAISE EXCEPTION TYPE /iwbep/cx_mgw_med_exception
          EXPORTING
            previous = lx_sadl_exposure_error.
    ENDTRY.
  endmethod.


  method GET_LAST_MODIFIED.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  CONSTANTS: lc_gen_date_time TYPE timestamp VALUE '20230302101717'.                  "#EC NOTEXT
 DATA: lv_rds_last_modified TYPE timestamp .
  rv_last_modified = super->get_last_modified( ).
  IF rv_last_modified LT lc_gen_date_time.
    rv_last_modified = lc_gen_date_time.
  ENDIF.
 lv_rds_last_modified =  GET_LAST_MODIFIED_RDS_4( ).
 IF rv_last_modified LT lv_rds_last_modified.
 rv_last_modified  = lv_rds_last_modified .
 ENDIF .
  endmethod.


  method GET_LAST_MODIFIED_RDS_4.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS          &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL   &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                    &*
*&                                                                     &*
*&---------------------------------------------------------------------*
*   This code is generated for Reference Data Source
*   4
*&---------------------------------------------------------------------*
*    @@TYPE_SWITCH:
    CONSTANTS: co_gen_date_time TYPE timestamp VALUE '20230302101717'.
    TRY.
        rv_last_modified_rds = CAST cl_sadl_gw_model_exposure( if_sadl_gw_model_exposure_data~get_model_exposure( ) )->get_last_modified( ).
      CATCH cx_root ##CATCH_ALL.
        rv_last_modified_rds = co_gen_date_time.
    ENDTRY.
    IF rv_last_modified_rds < co_gen_date_time.
      rv_last_modified_rds = co_gen_date_time.
    ENDIF.
  endmethod.


  method IF_SADL_GW_MODEL_EXPOSURE_DATA~GET_MODEL_EXPOSURE.
    CONSTANTS: co_gen_timestamp TYPE timestamp VALUE '20230302101717'.
    DATA(lv_sadl_xml) =
               |<?xml version="1.0" encoding="utf-16"?>|  &
               |<sadl:definition xmlns:sadl="http://sap.com/sap.nw.f.sadl" syntaxVersion="" >|  &
               | <sadl:dataSource type="CDS" name="I_CURRENCY" binding="I_CURRENCY" />|  &
               | <sadl:dataSource type="CDS" name="ZC_BOOKING_V2" binding="ZC_BOOKING_V2" />|  &
               | <sadl:dataSource type="CDS" name="ZC_FLIGHT_V2" binding="ZC_FLIGHT_V2" />|  &
               | <sadl:dataSource type="CDS" name="ZC_VH_FLIGHTNUMBER" binding="ZC_VH_FLIGHTNUMBER" />|  &
               | <sadl:dataSource type="CDS" name="ZI_AIRLINE" binding="ZI_AIRLINE" />|  &
               |<sadl:resultSet>|  &
               |<sadl:structure name="I_Currency" dataSource="I_CURRENCY" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZC_Booking_V2" dataSource="ZC_BOOKING_V2" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZC_Flight_V2" dataSource="ZC_FLIGHT_V2" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               | <sadl:association name="TO_AIRLINE" binding="_AIRLINE" target="ZI_Airline" cardinality="one" />|  &
               | <sadl:association name="TO_BOOKING_V2" binding="_BOOKING_V2" target="ZC_Booking_V2" cardinality="zeroToMany" />|  &
               | <sadl:association name="TO_CURRENCY" binding="_CURRENCY" target="I_Currency" cardinality="zeroToOne" />|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZC_VH_FlightNumber" dataSource="ZC_VH_FLIGHTNUMBER" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZI_Airline" dataSource="ZI_AIRLINE" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |</sadl:resultSet>|  &
               |</sadl:definition>| .

   ro_model_exposure = cl_sadl_gw_model_exposure=>get_exposure_xml( iv_uuid      = CONV #( 'ZUI_FLIGHT_V2' )
                                                                    iv_timestamp = co_gen_timestamp
                                                                    iv_sadl_xml  = lv_sadl_xml ).
  endmethod.
ENDCLASS.
