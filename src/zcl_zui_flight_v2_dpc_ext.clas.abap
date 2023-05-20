CLASS zcl_zui_flight_v2_dpc_ext DEFINITION
  PUBLIC
  INHERITING FROM zcl_zui_flight_v2_dpc
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /iwbep/if_mgw_appl_srv_runtime~execute_action
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS _flag_for_deletion
      IMPORTING
        i_airline       TYPE s_carr_id
        i_flightnumber  TYPE s_conn_id
        i_flightdate    TYPE s_date
      RETURNING
        VALUE(r_result) TYPE zcl_zui_flight_v2_mpc_ext=>ts_zc_flight_v2type.

ENDCLASS.



CLASS zcl_zui_flight_v2_dpc_ext IMPLEMENTATION.


  METHOD /iwbep/if_mgw_appl_srv_runtime~execute_action.

    CASE iv_action_name.
      WHEN 'FlagForDeletion'.
        DATA(ls_flight) = _flag_for_deletion(
          EXPORTING
            i_airline      = VALUE #( it_parameter[ name = 'Airline' ]-value )
            i_flightnumber = VALUE #( it_parameter[ name = 'FlightNumber' ]-value )
            i_flightdate   = VALUE #( it_parameter[ name = 'FlightDate' ]-value )
        ).

        me->copy_data_to_ref(
          EXPORTING
            is_data = ls_flight
          CHANGING
            cr_data = er_data
        ).


    ENDCASE.

  ENDMETHOD.

  METHOD _flag_for_deletion.
    SELECT SINGLE *
    FROM ZC_Flight_V2
    WHERE
      Airline = @i_airline AND
      FlightNumber = @i_flightnumber AND
      FlightDate = @i_flightdate
    INTO CORRESPONDING FIELDS OF @r_result.

    r_result-t_airline = 'TEST'.

  ENDMETHOD.

ENDCLASS.
