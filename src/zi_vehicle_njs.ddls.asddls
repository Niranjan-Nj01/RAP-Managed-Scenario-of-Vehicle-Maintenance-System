@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view of vehicle table'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_VEHICLE_njs as select from ZFLT_VEHICLE_NJS
composition [0..*] of ZI_MAINT_LOG_NJS as _MaintLogs
{
    key vehicleuuid as Vehicleuuid,
    vin as Vin,
    modelname as Modelname,
    lastservicedate as Lastservicedate,
    @Semantics.amount.currencyCode : 'Currencycode'
    totalcost as Totalcost,
    currencycode as Currencycode,
   _MaintLogs // Make association public
}
