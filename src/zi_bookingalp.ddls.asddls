@AbapCatalog.sqlViewName: 'ZIFIBOOKINGALP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View SBOOK-AnalyticalLP'
@VDM.viewType: #COMPOSITE
define view ZI_BookingALP
  as select from ZI_Booking
{
  key Airline,
  key FlightNumber,
  key FlightDate,
  key BookingId,

      substring(FlightDate, 1, 4) as FlightYear,
      substring(FlightDate, 5, 2) as FlightMonth,

      Customer,
      CustomerType,
      Smoker,
      LuggageWeight,
      WeightUnit,
      Invoice,
      Class,

      @Aggregation.default: #SUM
      PriceForeignCurrency,
      ForeignCurrency,
      
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
      _Currency
}
