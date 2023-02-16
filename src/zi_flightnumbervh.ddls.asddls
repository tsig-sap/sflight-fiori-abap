@AbapCatalog.sqlViewName: 'ZIFIFLIGHTNUMBVH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.dataCategory: #VALUE_HELP
@EndUserText.label: 'Interface Value Help FlightNumber'
define view ZI_FlightNumberVH
  as select from ZI_FlightSchedule
{
  key Airline,
  key FlightNumber
}
