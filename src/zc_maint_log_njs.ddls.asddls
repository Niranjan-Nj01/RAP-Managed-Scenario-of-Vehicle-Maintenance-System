@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection view maint log'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_MAINT_LOG_njs as projection on ZI_MAINT_LOG_njs
{
    key Loguuid,
    key Vehicleuuid,
    Maintdate,
    @Consumption.valueHelpDefinition: [{
  entity: {
    name    : 'ZI_MAINTYP_NJS',
    element : 'Mainttype'
  }
}]
    Mainttype,
    @Semantics.amount.currencyCode : 'Currencycode'
    Cost,
    Currencycode,
    Status,
    /* Associations */
    _MaintType,
    _Vehicle : redirected to parent zc_vehicle_njs
}
