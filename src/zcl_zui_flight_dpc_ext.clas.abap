CLASS zcl_zui_flight_dpc_ext DEFINITION
  PUBLIC
  INHERITING FROM zcl_zui_flight_dpc
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.

    METHODS zi_ticket_create_entity
        REDEFINITION .
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_zui_flight_dpc_ext IMPLEMENTATION.


  METHOD zi_ticket_create_entity.

    DATA: ls_input TYPE ZI_Ticket.

    io_data_provider->read_entry_data(
      IMPORTING
        es_data = ls_input
    ).

    DATA(ls_ticket) = VALUE sticket(
        carrid   = ls_input-Airline
        connid   = ls_input-FlightNumber
        fldate   = ls_input-FlightDate
        bookid   = ls_input-BookingId
        customid = ls_input-Customer
        ticket   = ls_input-Ticket
        place    = ls_input-Place
        archive_ = ls_input-Archive
    ).

    INSERT sticket FROM ls_ticket.

    er_entity = ls_input.

  ENDMETHOD.

ENDCLASS.
