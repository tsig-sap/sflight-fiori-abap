CLASS zcl_zui_flight_v2_mpc_ext DEFINITION
  PUBLIC
  INHERITING FROM zcl_zui_flight_v2_mpc
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS define REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_zui_flight_v2_mpc_ext IMPLEMENTATION.


  METHOD define.

    super->define( ).

    DATA(lo_action) = model->create_action( iv_action_name = 'FlagForDeletion' ).

    lo_action->set_return_entity_type( iv_data_object_name = 'ZC_Flight_V2Type' ).

    lo_action->set_return_multiplicity( iv_cardinality = /iwbep/if_mgw_med_odata_types=>gcs_cardinality-cardinality_1_1 ).

    lo_action->set_http_method( iv_method_name = 'POST' ).

    lo_action->set_action_for( iv_entity_type_name = 'ZC_Flight_V2Type' ).

    lo_action->create_input_parameter(
      EXPORTING
        iv_parameter_name = 'Airline'
    )->bind_data_element(
      EXPORTING
        iv_element_name     = 'S_CARR_ID'
    ).

    lo_action->create_input_parameter(
      EXPORTING
        iv_parameter_name = 'FlightNumber'
    )->bind_data_element(
      EXPORTING
        iv_element_name     = 'S_CONN_ID'
    ).

    lo_action->create_input_parameter(
      EXPORTING
        iv_parameter_name = 'FlightDate'
    )->bind_data_element(
      EXPORTING
        iv_element_name     = 'S_DATE'
    ).

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    DATA(lo_action2) = model->create_action( iv_action_name = 'Purge' ).

    lo_action2->set_http_method( iv_method_name = 'POST' ).


  ENDMETHOD.


ENDCLASS.
