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

    SELECT * FROM scarr INTO TABLE @DATA(lt_scarr).

    DATA lt_zzscarr TYPE STANDARD TABLE OF zzscarr.

    lt_zzscarr = CORRESPONDING #( lt_scarr ).

    LOOP AT lt_zzscarr INTO DATA(ls_zzscarr).
      ls_zzscarr-carruuid = /bobf/cl_frw_factory=>get_new_key( ).
      ls_zzscarr-create_date = sy-datum.
      ls_zzscarr-create_time = sy-uzeit.
      ls_zzscarr-create_by = sy-uname.

      MODIFY zzscarr FROM ls_zzscarr.
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
