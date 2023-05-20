CLASS zcl_i_a_clearplanetypes DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_a_supercl_simple
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /bobf/if_frw_action~execute
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_i_a_clearplanetypes IMPLEMENTATION.


  METHOD /bobf/if_frw_action~execute.
    DATA: lt_airline TYPE STANDARD TABLE OF zsiairlinetp,
          lt_data    TYPE STANDARD TABLE OF zsiairlineplanetp.

    io_read->retrieve(
      EXPORTING
        iv_node                 = is_ctx-node_key
        it_key                  = it_key
      IMPORTING
        et_data                 = lt_airline
    ).

    io_read->retrieve_by_association(
      EXPORTING
        iv_node                 = is_ctx-node_key
        it_key                  = it_key
        iv_association          = zif_i_airlinetp_c=>sc_association-zi_airlinetp-_airlineplanetp
        iv_fill_data            = abap_true
      IMPORTING
        et_data                 = lt_data
    ).

    eo_message = /bobf/cl_frw_factory=>get_message( ).

    eo_message->add_message(
      EXPORTING
        is_msg      = VALUE symsg(
                        msgty = 'W'
                        msgid = '/BOBF/FRW'
                        msgno = '002'
                        msgv1 = 'Message 1'
                        msgv2 = 'Message 2'
                        msgv3 = 'Message 3'
                        msgv4 = 'Message 4'
                      )
*        iv_node      =
*        iv_key       =
*        iv_attribute =
*        iv_lifetime  =
    ).

    et_failed_key = it_key.

  ENDMETHOD.

ENDCLASS.
