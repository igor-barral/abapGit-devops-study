"! <p class="shorttext synchronized">Utilitários de texto (subpacote)</p>
"! Pertence ao subpacote ZIB_ABAPGIT_UTIL. Com FOLDER_LOGIC = PREFIX,
"! o abapGit remove o prefixo do pacote pai (ZIB_ABAPGIT_) e grava o
"! objeto na pasta src/util/.
CLASS zcl_ib_abapgit_text_util DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    "! Converte um texto em identificador minúsculo separado por hífens.
    "! @parameter text   | Texto livre
    "! @parameter result | Identificador (ex.: objeto-serializado)
    CLASS-METHODS slug
      IMPORTING text          TYPE string
      RETURNING VALUE(result) TYPE string.
ENDCLASS.


CLASS zcl_ib_abapgit_text_util IMPLEMENTATION.

  METHOD slug.
    result = to_lower( condense( text ) ).
    result = replace( val   = result
                      regex = `[^a-z0-9]+`
                      with  = `-`
                      occ   = 0 ).
  ENDMETHOD.

ENDCLASS.
