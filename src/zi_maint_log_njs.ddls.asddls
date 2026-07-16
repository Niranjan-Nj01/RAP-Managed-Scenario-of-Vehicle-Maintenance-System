@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view of maint log table'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_MAINT_LOG_njs as select from zzflt_maint_log
association [0..1] to zi_maintyp_njs as _MaintType
  on $projection.Mainttype = _MaintType.Mainttype
association to parent ZI_VEHICLE_njs as _Vehicle
    on $projection.Vehicleuuid = _Vehicle.Vehicleuuid
{
    key loguuid as Loguuid,
    key vehicleuuid as Vehicleuuid,
    maintdate as Maintdate,
    @Consumption.valueHelpDefinition: [{
  entity: {
    name    : 'ZI_MAINTYP_NJS',
    element : 'Mainttype'
  }
}] 
    mainttype as Mainttype,
    @Semantics.amount.currencyCode : 'Currencycode'
    cost as Cost,
    currencycode as Currencycode,
    status as Status,
    _Vehicle,
    
    _MaintType
}
