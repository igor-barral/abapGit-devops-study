"! <p class="shorttext synchronized">Contrato de saudação (exemplo abapGit)</p>
INTERFACE zif_ib_abapgit_greeter
  PUBLIC.

  "! Monta a saudação para um nome.
  "! @parameter name     | Nome de quem recebe a saudação
  "! @parameter greeting | Texto final
  METHODS greet
    IMPORTING name            TYPE string
    RETURNING VALUE(greeting) TYPE string.

ENDINTERFACE.
