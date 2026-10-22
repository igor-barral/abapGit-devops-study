*"* use this source file for your ABAP unit test classes
CLASS ltc_greeter DEFINITION FINAL
  FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.

  PRIVATE SECTION.
    DATA cut TYPE REF TO zif_ib_abapgit_greeter.

    METHODS setup.
    METHODS greet_contains_name FOR TESTING.
ENDCLASS.


CLASS ltc_greeter IMPLEMENTATION.

  METHOD setup.
    cut = NEW zcl_ib_abapgit_demo( ).
  ENDMETHOD.


  METHOD greet_contains_name.
    DATA(greeting) = cut->greet( `Igor` ).

    cl_abap_unit_assert=>assert_char_cp( act = greeting
                                         exp = '*Igor*' ).
  ENDMETHOD.

ENDCLASS.
