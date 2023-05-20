@AbapCatalog.sqlViewName: 'ZCBOOKINGALP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View SBOOK - ALP'

@Analytics.query: true
@OData.publish: true

define view ZC_BookingALP
  as select from ZI_BookingCube
{
  key Airline,
  key FlightNumber,
  key FlightDate,
  key BookingId,
      FlightYear,
      FlightMonth,
      PriceForeignCurrency,
      ForeignCurrency,
      PriceLocalCurrency,
      LocalCurrency
}
