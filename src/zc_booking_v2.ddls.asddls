@AbapCatalog.sqlViewName: 'ZCBOOKINGV2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View SBOOK V2'
define view ZC_Booking_V2
  as select from ZI_Booking_V2
{
  key Airline,
  key FlightNumber,
  key FlightDate,
  key BookingId,
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
      _Currency
}
