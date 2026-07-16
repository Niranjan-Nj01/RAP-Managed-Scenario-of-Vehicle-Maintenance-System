CLASS lhc_ZI_VEHICLE_njs DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR ZI_VEHICLE_njs RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR ZI_VEHICLE_njs RESULT result.

    METHODS calculateLastService FOR DETERMINE ON MODIFY
      IMPORTING keys FOR ZI_VEHICLE_njs~calculateLastService.

    METHODS validateServiceDate FOR VALIDATE ON SAVE
      IMPORTING keys FOR ZI_VEHICLE_njs~validateServiceDate.

ENDCLASS.

CLASS lhc_ZI_VEHICLE_njs IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD calculateLastService.
  ENDMETHOD.

  METHOD validateServiceDate.
  ENDMETHOD.

ENDCLASS.
