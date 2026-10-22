*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lcl_banner DEFINITION FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS frame
      IMPORTING text          TYPE string
      RETURNING VALUE(result) TYPE string.
ENDCLASS.


CLASS lcl_banner IMPLEMENTATION.

  METHOD frame.
    result = |[ { text } ]|.
  ENDMETHOD.

ENDCLASS.
