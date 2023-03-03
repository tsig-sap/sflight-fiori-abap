@AbapCatalog.sqlViewName: 'ZIFIFLIGHT_V2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for SFLIGHT'

define view ZI_Flight_V2
  as select from sflight
  association [0..1] to I_Currency as _Currency on $projection.Currency = _Currency.Currency
{

  key sflight.carrid     as Airline,
  key sflight.connid     as FlightNumber,
  key sflight.fldate     as FlightDate,

      @Semantics.amount.currencyCode: 'Currency'
      sflight.price      as Price,

      @Semantics.currencyCode: true
      sflight.currency   as Currency,

      sflight.planetype  as PlaneType,
      sflight.seatsmax   as SeatsMax,
      sflight.seatsocc   as SeatsOccupied,

      @Semantics.amount.currencyCode: 'Currency'
      sflight.paymentsum as PaymentSum,

      sflight.seatsmax_b as SeatsMaxB,
      sflight.seatsocc_b as SeatsOccupiedB,
      sflight.seatsmax_f as SeatsMaxF,
      sflight.seatsocc_f as SeatsOccupiedF,

      _Currency
}
