class ZCL_UI_FLIGHTSCHEDULE_MPC definition
  public
  inheriting from /IWBEP/CL_MGW_PUSH_ABS_MODEL
  create public .

public section.

  interfaces IF_SADL_GW_MODEL_EXPOSURE_DATA .

  types:
    begin of TS_I_COUNTRYSRCHHELPTYPE.
      include type I_COUNTRYSRCHHELP.
  types:
      T_COUNTRY type I_COUNTRYTEXT-COUNTRYNAME,
    end of TS_I_COUNTRYSRCHHELPTYPE .
  types:
   TT_I_COUNTRYSRCHHELPTYPE type standard table of TS_I_COUNTRYSRCHHELPTYPE .
  types:
    begin of TS_I_CURRENCYTYPE.
      include type I_CURRENCY.
  types:
      T_CURRENCY type I_CURRENCYTEXT-CURRENCYNAME,
    end of TS_I_CURRENCYTYPE .
  types:
   TT_I_CURRENCYTYPE type standard table of TS_I_CURRENCYTYPE .
  types:
    begin of TS_ZC_FLIGHTTYPE.
      include type ZC_FLIGHT.
  types:
    end of TS_ZC_FLIGHTTYPE .
  types:
   TT_ZC_FLIGHTTYPE type standard table of TS_ZC_FLIGHTTYPE .
  types:
    begin of TS_ZC_FLIGHTCOUNTERPERYEARTYPE.
      include type ZC_FLIGHTCOUNTERPERYEAR.
  types:
      generated_id type string,
    end of TS_ZC_FLIGHTCOUNTERPERYEARTYPE .
  types:
   TT_ZC_FLIGHTCOUNTERPERYEARTYPE type standard table of TS_ZC_FLIGHTCOUNTERPERYEARTYPE .
  types:
    begin of TS_ZC_FLIGHTSCHEDULETYPE.
      include type ZC_FLIGHTSCHEDULE.
  types:
      T_AIRLINE type ZI_AIRLINE-AIRLINENAME,
    end of TS_ZC_FLIGHTSCHEDULETYPE .
  types:
   TT_ZC_FLIGHTSCHEDULETYPE type standard table of TS_ZC_FLIGHTSCHEDULETYPE .
  types:
    begin of TS_ZI_AIRLINETYPE.
      include type ZI_AIRLINE.
  types:
    end of TS_ZI_AIRLINETYPE .
  types:
   TT_ZI_AIRLINETYPE type standard table of TS_ZI_AIRLINETYPE .
  types:
    begin of TS_ZI_BOOKINGTYPE.
      include type ZI_BOOKING.
  types:
    end of TS_ZI_BOOKINGTYPE .
  types:
   TT_ZI_BOOKINGTYPE type standard table of TS_ZI_BOOKINGTYPE .
  types:
    begin of TS_ZI_FLIGHTNUMBERVHTYPE.
      include type ZI_FLIGHTNUMBERVH.
  types:
    end of TS_ZI_FLIGHTNUMBERVHTYPE .
  types:
   TT_ZI_FLIGHTNUMBERVHTYPE type standard table of TS_ZI_FLIGHTNUMBERVHTYPE .
  types:
    begin of TS_ZI_TICKETTYPE.
      include type ZI_TICKET.
  types:
    end of TS_ZI_TICKETTYPE .
  types:
   TT_ZI_TICKETTYPE type standard table of TS_ZI_TICKETTYPE .
  types:
    begin of TS_ZI_VH_GEOCITYTYPE.
      include type ZI_VH_GEOCITY.
  types:
    end of TS_ZI_VH_GEOCITYTYPE .
  types:
   TT_ZI_VH_GEOCITYTYPE type standard table of TS_ZI_VH_GEOCITYTYPE .

  constants GC_I_COUNTRYSRCHHELPTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'I_CountrySrchHelpType' ##NO_TEXT.
  constants GC_I_CURRENCYTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'I_CurrencyType' ##NO_TEXT.
  constants GC_ZC_FLIGHTCOUNTERPERYEARTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZC_FlightCounterPerYearType' ##NO_TEXT.
  constants GC_ZC_FLIGHTSCHEDULETYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZC_FlightScheduleType' ##NO_TEXT.
  constants GC_ZC_FLIGHTTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZC_FlightType' ##NO_TEXT.
  constants GC_ZI_AIRLINETYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZI_AirlineType' ##NO_TEXT.
  constants GC_ZI_BOOKINGTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZI_BookingType' ##NO_TEXT.
  constants GC_ZI_FLIGHTNUMBERVHTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZI_FlightNumberVHType' ##NO_TEXT.
  constants GC_ZI_TICKETTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZI_TicketType' ##NO_TEXT.
  constants GC_ZI_VH_GEOCITYTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZI_VH_GeoCityType' ##NO_TEXT.

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



CLASS ZCL_UI_FLIGHTSCHEDULE_MPC IMPLEMENTATION.


  method DEFINE.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*

model->set_schema_namespace( 'ZUI_FLIGHTSCHEDULE_SRV' ).

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


  CONSTANTS: lc_gen_date_time TYPE timestamp VALUE '20230304001617'.                  "#EC NOTEXT
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
    CONSTANTS: co_gen_date_time TYPE timestamp VALUE '20230304001618'.
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
    CONSTANTS: co_gen_timestamp TYPE timestamp VALUE '20230304001618'.
    DATA(lv_sadl_xml) =
               |<?xml version="1.0" encoding="utf-16"?>|  &
               |<sadl:definition xmlns:sadl="http://sap.com/sap.nw.f.sadl" syntaxVersion="" >|  &
               | <sadl:dataSource type="CDS" name="I_COUNTRYSRCHHELP" binding="I_COUNTRYSRCHHELP" />|  &
               | <sadl:dataSource type="CDS" name="I_CURRENCY" binding="I_CURRENCY" />|  &
               | <sadl:dataSource type="CDS" name="ZC_FLIGHT" binding="ZC_FLIGHT" />|  &
               | <sadl:dataSource type="CDS" name="ZC_FLIGHTCOUNTERPERYEAR" binding="ZC_FLIGHTCOUNTERPERYEAR" />|  &
               | <sadl:dataSource type="CDS" name="ZC_FLIGHTSCHEDULE" binding="ZC_FLIGHTSCHEDULE" />|  &
               | <sadl:dataSource type="CDS" name="ZI_AIRLINE" binding="ZI_AIRLINE" />|  &
               | <sadl:dataSource type="CDS" name="ZI_BOOKING" binding="ZI_BOOKING" />|  &
               | <sadl:dataSource type="CDS" name="ZI_FLIGHTNUMBERVH" binding="ZI_FLIGHTNUMBERVH" />|  &
               | <sadl:dataSource type="CDS" name="ZI_TICKET" binding="ZI_TICKET" />|  &
               | <sadl:dataSource type="CDS" name="ZI_VH_GEOCITY" binding="ZI_VH_GEOCITY" />|  &
               |<sadl:resultSet>|  &
               |<sadl:structure name="I_CountrySrchHelp" dataSource="I_COUNTRYSRCHHELP" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |<sadl:structure name="I_Currency" dataSource="I_CURRENCY" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZC_Flight" dataSource="ZC_FLIGHT" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZC_FlightCounterPerYear" dataSource="ZC_FLIGHTCOUNTERPERYEAR" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZC_FlightSchedule" dataSource="ZC_FLIGHTSCHEDULE" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               | <sadl:association name="TO_AIRLINE" binding="_AIRLINE" target="ZI_Airline" cardinality="one" />|  &
               | <sadl:association name="TO_FLIGHT" binding="_FLIGHT" target="ZC_Flight" cardinality="zeroToMany" />|  &
               | <sadl:association name="TO_FLIGHTCOUNTERPERYEAR" binding="_FLIGHTCOUNTERPERYEAR" target="ZC_FlightCounterPerYear" cardinality="zeroToMany" />|  &
               | <sadl:association name="TO_VH_GEOCITY_FROM" binding="_VH_GEOCITY_FROM" target="ZI_VH_GeoCity" cardinality="zeroToOne" />|  &
               | <sadl:association name="TO_VH_GEOCITY_TO" binding="_VH_GEOCITY_TO" target="ZI_VH_GeoCity" cardinality="zeroToOne" />|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZI_Airline" dataSource="ZI_AIRLINE" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZI_Booking" dataSource="ZI_BOOKING" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               | <sadl:association name="TO_CURRENCY" binding="_CURRENCY" target="I_Currency" cardinality="zeroToOne" />|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZI_FlightNumberVH" dataSource="ZI_FLIGHTNUMBERVH" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>| .
      lv_sadl_xml = |{ lv_sadl_xml }| &
               |</sadl:structure>|  &
               |<sadl:structure name="ZI_Ticket" dataSource="ZI_TICKET" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZI_VH_GeoCity" dataSource="ZI_VH_GEOCITY" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |</sadl:resultSet>|  &
               |</sadl:definition>| .

   ro_model_exposure = cl_sadl_gw_model_exposure=>get_exposure_xml( iv_uuid      = CONV #( 'ZUI_FLIGHTSCHEDULE' )
                                                                    iv_timestamp = co_gen_timestamp
                                                                    iv_sadl_xml  = lv_sadl_xml ).
  endmethod.
ENDCLASS.
