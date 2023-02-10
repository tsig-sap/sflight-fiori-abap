class ZCL_ZUI_FLIGHT_MPC definition
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
    begin of TS_ZI_BOOKINGTYPE.
      include type ZI_BOOKING.
  types:
    end of TS_ZI_BOOKINGTYPE .
  types:
   TT_ZI_BOOKINGTYPE type standard table of TS_ZI_BOOKINGTYPE .
  types:
    begin of TS_ZI_FLIGHTTYPE.
      include type ZI_FLIGHT.
  types:
    end of TS_ZI_FLIGHTTYPE .
  types:
   TT_ZI_FLIGHTTYPE type standard table of TS_ZI_FLIGHTTYPE .
  types:
    begin of TS_ZI_FLIGHTSCHEDULETYPE.
      include type ZI_FLIGHTSCHEDULE.
  types:
    end of TS_ZI_FLIGHTSCHEDULETYPE .
  types:
   TT_ZI_FLIGHTSCHEDULETYPE type standard table of TS_ZI_FLIGHTSCHEDULETYPE .
  types:
    begin of TS_ZI_TICKETTYPE.
      include type ZI_TICKET.
  types:
    end of TS_ZI_TICKETTYPE .
  types:
   TT_ZI_TICKETTYPE type standard table of TS_ZI_TICKETTYPE .

  constants GC_I_CURRENCYTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'I_CurrencyType' ##NO_TEXT.
  constants GC_ZI_BOOKINGTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZI_BookingType' ##NO_TEXT.
  constants GC_ZI_FLIGHTSCHEDULETYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZI_FlightScheduleType' ##NO_TEXT.
  constants GC_ZI_FLIGHTTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZI_FlightType' ##NO_TEXT.
  constants GC_ZI_TICKETTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZI_TicketType' ##NO_TEXT.

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



CLASS ZCL_ZUI_FLIGHT_MPC IMPLEMENTATION.


  method DEFINE.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*

model->set_schema_namespace( 'ZUI_FLIGHT_SRV' ).

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


  CONSTANTS: lc_gen_date_time TYPE timestamp VALUE '20230210170315'.                  "#EC NOTEXT
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
    CONSTANTS: co_gen_date_time TYPE timestamp VALUE '20230210170315'.
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
    CONSTANTS: co_gen_timestamp TYPE timestamp VALUE '20230210170315'.
    DATA(lv_sadl_xml) =
               |<?xml version="1.0" encoding="utf-16"?>|  &
               |<sadl:definition xmlns:sadl="http://sap.com/sap.nw.f.sadl" syntaxVersion="" >|  &
               | <sadl:dataSource type="CDS" name="I_CURRENCY" binding="I_CURRENCY" />|  &
               | <sadl:dataSource type="CDS" name="ZI_FLIGHTSCHEDULE" binding="ZI_FLIGHTSCHEDULE" />|  &
               | <sadl:dataSource type="CDS" name="ZI_TICKET" binding="ZI_TICKET" />|  &
               | <sadl:dataSource type="CDS" name="ZI_BOOKING" binding="ZI_BOOKING" />|  &
               | <sadl:dataSource type="CDS" name="ZI_FLIGHT" binding="ZI_FLIGHT" />|  &
               |<sadl:resultSet>|  &
               |<sadl:structure name="I_Currency" dataSource="I_CURRENCY" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZI_FlightSchedule" dataSource="ZI_FLIGHTSCHEDULE" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZI_Ticket" dataSource="ZI_TICKET" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZI_Booking" dataSource="ZI_BOOKING" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               |</sadl:structure>|  &
               |<sadl:structure name="ZI_Flight" dataSource="ZI_FLIGHT" maxEditMode="RO" exposure="TRUE" >|  &
               | <sadl:query name="SADL_QUERY">|  &
               | </sadl:query>|  &
               | <sadl:association name="TO_TICKET" binding="_TICKET" target="ZI_Ticket" cardinality="oneToMany" />|  &
               | <sadl:association name="TO_BOOK" binding="_BOOK" target="ZI_Booking" cardinality="oneToMany" />|  &
               | <sadl:association name="TO_CURRENCY" binding="_CURRENCY" target="I_Currency" cardinality="zeroToOne" />|  &
               | <sadl:association name="TO_FLIGHTSCHEDULE" binding="_FLIGHTSCHEDULE" target="ZI_FlightSchedule" cardinality="one" />|  &
               |</sadl:structure>|  &
               |</sadl:resultSet>|  &
               |</sadl:definition>| .

   ro_model_exposure = cl_sadl_gw_model_exposure=>get_exposure_xml( iv_uuid      = CONV #( 'ZUI_FLIGHT' )
                                                                    iv_timestamp = co_gen_timestamp
                                                                    iv_sadl_xml  = lv_sadl_xml ).
  endmethod.
ENDCLASS.
