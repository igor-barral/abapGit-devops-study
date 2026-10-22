"! <p class="shorttext synchronized">Demonstração da serialização do abapGit</p>
"! Uma classe global com classe local (arquivo .clas.locals_imp.abap)
"! e classe de teste (arquivo .clas.testclasses.abap). Cada parte da
"! classe vira um arquivo diferente no repositório Git.
CLASS zcl_ib_abapgit_demo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    INTERFACES zif_ib_abapgit_greeter.

    ALIASES greet FOR zif_ib_abapgit_greeter~greet.
ENDCLASS.


CLASS zcl_ib_abapgit_demo IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA(banner) = NEW lcl_banner( ).

    out->write( banner->frame( greet( `abapGit` ) ) ).
    out->write( zcl_ib_abapgit_text_util=>slug( `Objeto serializado pelo abapGit` ) ).
  ENDMETHOD.


  METHOD zif_ib_abapgit_greeter~greet.
    greeting = |Olá, { name }! Este texto veio de ZCL_IB_ABAPGIT_DEMO.|.
  ENDMETHOD.

ENDCLASS.
