@AbapCatalog.sqlViewName: 'ZIFIBOOKINGCUBE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View SBOOK-Cube'
@Analytics.dataCategory: #CUBE
@VDM.viewType: #COMPOSITE

define view ZI_BookingCube
  as select from ZI_Booking_2
  association to ZI_Airline      as _Airline       on $projection.Airline = _Airline.Airline
  association to I_CalendarMonth as _CalendarMonth on $projection.FlightMonth = _CalendarMonth.CalendarMonth
  association to I_Currency      as _Currency      on $projection.LocalCurrency = _Currency.Currency
{
      @ObjectModel.foreignKey.association: '_Airline'
  key Airline,
  key FlightNumber,
  key FlightDate,
  key BookingId,

      FlightYear,

      @ObjectModel.foreignKey.association: '_CalendarMonth'
      FlightMonth,
      Customer,
      CustomerType,
      Smoker,
      Invoice,
      Class,
      @Aggregation.default: #SUM
      PriceLocalCurrency,
      LocalCurrency,
      OrderDate,
      Counter,
      AgencyNumber,
      Cancelled,
      Reserved,
      PassengerName,
      PassengerFormOfAddress,
      PassengerBirthDate,

      /* Associations */
      _Airline,
      _CalendarMonth,
      _Currency
}
