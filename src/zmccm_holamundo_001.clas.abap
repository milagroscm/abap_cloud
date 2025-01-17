CLASS zmccm_holamundo_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmccm_holamundo_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  out->write( 'Hola mundo de abap' ).
  ENDMETHOD.
ENDCLASS.
