@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view of maint type'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_maintyp_njs as select from ZFLT_MAINTYP_NJS
{
    key mainttype as Mainttype
}
