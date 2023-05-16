@AbapCatalog.sqlViewName: 'ZIFIBOOKING2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View SBOOK-Composite'
@VDM.viewType: #COMPOSITE

define view ZI_Booking_2
  as select from ZI_Booking
{
  key Airline,
  key FlightNumber,
  key FlightDate,
  key BookingId,
      cast( substring(FlightDate, 1, 4) as calendaryear)  as FlightYear,
      cast( substring(FlightDate, 5, 2) as calendarmonth) as FlightMonth,
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
