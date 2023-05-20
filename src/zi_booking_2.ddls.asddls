@AbapCatalog.sqlViewName: 'ZIFIBOOKING2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View SBOOK-Composite'
@VDM.viewType: #COMPOSITE

define view ZI_Booking_2
  as select from ZI_Booking
  association[0..1] to I_CalendarMonth as _CalendarMonth on $projection.FlightMonth = _CalendarMonth.CalendarMonth
{
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
      LuggageWeight,
      WeightUnit,
      Invoice,
      Class,
      PriceForeignCurrency,
      ForeignCurrency,
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
      _FlightSchedule,
      _ForeignCurrency,
      _LocalCurrency,
      _CalendarMonth
}
