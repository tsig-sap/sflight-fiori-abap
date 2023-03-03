@AbapCatalog.sqlViewName: 'ZIFIBOOKING_V2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for SBOOK'
define view ZI_Booking_V2
  as select from sbook
  association [0..1] to I_Currency as _Currency on  $projection.ForeignCurrency = _Currency.Currency
                                                and $projection.LocalCurrency   = _Currency.Currency
{
  key carrid     as Airline,
  key connid     as FlightNumber,
  key fldate     as FlightDate,
  key bookid     as BookingId,
      customid   as Customer,
      custtype   as CustomerType,
      smoker     as Smoker,
      luggweight as LuggageWeight,
      wunit      as WeightUnit,
      invoice    as Invoice,
      class      as Class,

      @Semantics.amount.currencyCode: 'ForeignCurrency'
      forcuram   as PriceForeignCurrency,

      @Semantics.currencyCode: true
      forcurkey  as ForeignCurrency,

      @Semantics.amount.currencyCode: 'LocalCurrency'
      loccuram   as PriceLocalCurrency,

      @Semantics.currencyCode: true
      loccurkey  as LocalCurrency,

      order_date as OrderDate,
      counter    as Counter,
      agencynum  as AgencyNumber,
      cancelled  as Cancelled,
      reserved   as Reserved,
      passname   as PassengerName,
      passform   as PassengerFormOfAddress,
      passbirth  as PassengerBirthDate,

      _Currency
}
