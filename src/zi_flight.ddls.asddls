@AbapCatalog.sqlViewName: 'ZIFIFLIGHT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for SFLIGHT'
define view ZI_Flight
  as select from sflight
  association [1..*] to ZI_Booking        as _Book           on  $projection.Airline      = _Book.Airline
                                                             and $projection.FlightNumber = _Book.FlightNumber
                                                             and $projection.FlightDate   = _Book.FlightDate
  association [1..*] to ZI_Ticket         as _Ticket         on  $projection.Airline      = _Ticket.Airline
                                                             and $projection.FlightNumber = _Ticket.FlightNumber
                                                             and $projection.FlightDate   = _Ticket.FlightDate
  association [1..1] to ZI_FlightSchedule as _FlightSchedule on  $projection.Airline      = _FlightSchedule.Airline
                                                             and $projection.FlightNumber = _FlightSchedule.FlightNumber
  association [0..1] to I_Currency        as _Currency       on  $projection.Currency = _Currency.Currency
{

  key sflight.carrid     as Airline,
  key sflight.connid     as FlightNumber,
  key sflight.fldate     as FlightDate,
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

      _Book,
      _Ticket,
      _FlightSchedule,
      _Currency
}
