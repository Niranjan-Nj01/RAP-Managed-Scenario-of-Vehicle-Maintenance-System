@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection view vehicle'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zc_vehicle_njs
provider contract transactional_query
 as projection on ZI_VEHICLE_njs

{
    key Vehicleuuid,
    Vin,
    Modelname,
    @UI.hidden: true
    Lastservicedate,
    @UI.hidden: true
    @Semantics.amount.currencyCode : 'Currencycode'
    Totalcost,
    Currencycode,
    /* Associations */
    _MaintLogs:redirected to composition child ZC_MAINT_LOG_njs
    // Make association public
}
