CLASS zcl_zui_flight_mpc_ext DEFINITION
  PUBLIC
  INHERITING FROM zcl_zui_flight_mpc
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS define REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_zui_flight_mpc_ext IMPLEMENTATION.

  METHOD define.

    super->define( ).

    model->get_entity_set( iv_entity_set_name = 'ZI_Ticket' )->set_creatable( ).
    model->get_entity_set( iv_entity_set_name = 'ZI_Ticket' )->set_updatable( ).
    model->get_entity_set( iv_entity_set_name = 'ZI_Ticket' )->set_deletable( ).

  ENDMETHOD.

ENDCLASS.
