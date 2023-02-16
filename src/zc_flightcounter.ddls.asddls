@AbapCatalog.sqlViewName: 'ZCFLIGHTCOUNTER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View Flight Counter'
define view ZC_FlightCounter
  as select from ZI_Flight
{
  key Airline,
  key FlightNumber,
      count( * ) as NumberOfFlight
}

group by
  Airline,
  FlightNumber
