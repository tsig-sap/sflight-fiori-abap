@AbapCatalog.sqlViewName: 'ZIFIAIRLINE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@EndUserText.label: 'Interface View for SCARR'
@Analytics.dataCategory: #DIMENSION

define view ZI_Airline
  as select from scarr
{
  key carrid   as Airline,

      @Semantics.text: true
      carrname as AirlineName,

      currcode as CurrencyCode,
      url      as Url
}
