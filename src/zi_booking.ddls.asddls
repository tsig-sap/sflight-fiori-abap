@AbapCatalog.sqlViewName: 'ZIFIBOOKING'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for SBOOK'
define view ZI_Booking
  as select from sbook
  association to ZI_Airline        as _Airline         on  $projection.Airline = _Airline.Airline
  association to ZI_FlightSchedule as _FlightSchedule  on  $projection.Airline      = _FlightSchedule.Airline
                                                       and $projection.FlightNumber = _FlightSchedule.FlightNumber
  association to I_Currency        as _ForeignCurrency on  $projection.ForeignCurrency = _ForeignCurrency.Currency
  association to I_Currency        as _LocalCurrency   on  $projection.LocalCurrency = _LocalCurrency.Currency
{
      @ObjectModel.foreignKey.association: '_Airline'
  key carrid                                                          as Airline,

  key connid                                                          as FlightNumber,
  key fldate                                                          as FlightDate,
  key bookid                                                          as BookingId,

      cast( substring($projection.flightdate, 1, 4) as calendaryear)  as FlightYear,
      cast( substring($projection.flightdate, 5, 2) as calendarmonth) as FlightMonth,

      customid                                                        as Customer,
      custtype                                                        as CustomerType,
      smoker                                                          as Smoker,
      luggweight                                                      as LuggageWeight,
      wunit                                                           as WeightUnit,
      invoice                                                         as Invoice,
      class                                                           as Class,

      @Semantics.amount.currencyCode: 'ForeignCurrency'
      forcuram                                                        as PriceForeignCurrency,

      @Semantics.currencyCode: true
      forcurkey                                                       as ForeignCurrency,

      @Semantics.amount.currencyCode: 'LocalCurrency'
      loccuram                                                        as PriceLocalCurrency,

      @Semantics.currencyCode: true
      loccurkey                                                       as LocalCurrency,

      order_date                                                      as OrderDate,
      counter                                                         as Counter,
      agencynum                                                       as AgencyNumber,
      cancelled                                                       as Cancelled,
      reserved                                                        as Reserved,
      passname                                                        as PassengerName,
      passform                                                        as PassengerFormOfAddress,
      passbirth                                                       as PassengerBirthDate,

      _Airline,
      _FlightSchedule,
      _ForeignCurrency,
      _LocalCurrency
}
