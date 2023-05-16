CLASS zcl_helper_console DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_helper_console IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    SELECT FROM ZI_BookingCube
    FIELDS
      Airline,
      FlightYear,
      FlightMonth,
      LocalCurrency,
      SUM( PriceLocalCurrency ) AS PriceLocalCurrency
    GROUP BY Airline,FlightYear,FlightMonth,LocalCurrency
    INTO TABLE @DATA(lt_cube).

*    DATA: lt_requested_columns TYPE cl_lba_std_query=>tn_t_columns_req,
*          lt_variable_values   TYPE cl_lba_std_query=>tn_t_values,
*          lt_filter_values     TYPE cl_lba_std_query=>tn_t_values,
*          lt_column_catalog    TYPE cl_lba_std_query=>tn_t_column_description_rt,
*          lr_resultset         TYPE REF TO data.
*
*    TRY.
*
*        DATA(lr_std_query) = NEW cl_lba_std_query( i_query_name = '!2CZIFIBOOKINGCUBE' ).

*        lt_requested_columns = VALUE #(
*          ( name = 'Airline' )
*          ( name = 'FlightYear' )
*          ( name = 'FlightMonth' )
*          ( name = '2CPTRPJR2C68C25RL9IW13EAU' )
*        ).

*        lr_std_query->get_resultset(
*          EXPORTING
*            i_t_requested_columns = lt_requested_columns
*          IMPORTING
*            e_t_column_catalog    = lt_column_catalog
*            e_r_resultset         = lr_resultset
*        ).
*
*        lr_std_query->close_query( ).

*        DATA(lr_cds_query) = NEW cl_lba_cds_query( i_view_name = 'ZI_BookingCube' ).
*
*        lr_cds_query->get_resultset(
*          EXPORTING
*            i_t_requested_columns = lt_requested_columns
*          IMPORTING
*            e_t_column_catalog    = lt_column_catalog
*            e_r_resultset         = lr_resultset
*        ).

*      CATCH cx_lba_query INTO DATA(lx_query).
*        DATA(lv_text) = lx_query->get_longtext( ).
*    ENDTRY.

  ENDMETHOD.



ENDCLASS.
