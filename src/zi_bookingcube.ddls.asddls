@AbapCatalog.sqlViewName: 'ZIFIBOOKINGCUBE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View SBOOK-Cube'
@Analytics.dataCategory: #CUBE
@VDM.viewType: #COMPOSITE

define view ZI_BookingCube
  as select from ZI_Booking_2
{
  key Airline,
      _Airline,

  key FlightNumber,
      _FlightSchedule,

  key FlightDate,
  key BookingId,

      FlightYear,

      FlightMonth,
      _CalendarMonth,

      @Aggregation.default: #SUM
      PriceForeignCurrency,
      ForeignCurrency,
      _ForeignCurrency,

      @Aggregation.default: #SUM
      PriceLocalCurrency,
      LocalCurrency,
      _LocalCurrency
}
