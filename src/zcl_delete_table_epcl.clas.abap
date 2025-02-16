CLASS zcl_delete_table_epcl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_DELETE_TABLE_EPCL IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DELETE FROM zrent_brands_epc.
    IF sy-subrc EQ 0.
      out->write( 'All Data deleted' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
