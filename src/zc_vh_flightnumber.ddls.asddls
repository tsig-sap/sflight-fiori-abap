@AbapCatalog.sqlViewName: 'ZCVHFLIGHTNUMBER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for Flight Number'
@ObjectModel.dataCategory: #VALUE_HELP
@VDM.viewType: #CONSUMPTION
define view ZC_VH_FlightNumber
  as select from ZI_FlightSchedule
{
  key Airline,
  key FlightNumber,
      CountryFrom,
      CityFrom,
      AirportFrom,
      CountryTo,
      CityTo,
      AirportTo
}
