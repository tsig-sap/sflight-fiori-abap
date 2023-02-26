@AbapCatalog.sqlViewName: 'ZCFLIGHT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View SFLIGHT'
@VDM.viewType: #CONSUMPTION

@UI.headerInfo.typeName: 'Flight'
@UI.headerInfo.typeNamePlural: 'Flights'

define view ZC_Flight
  as select from ZI_Flight
{
      @UI.lineItem.position: 1
  key Airline,

      @UI.lineItem.position: 2
  key FlightNumber,

      @UI.lineItem.position: 3
  key FlightDate,

      @UI.lineItem.position: 4
      Price,

      @UI.lineItem.position: 5
      Currency,

      @UI.lineItem.position: 6
      PlaneType,

      @UI.lineItem.position: 7
      SeatsMax,

      @UI.lineItem.position: 8
      SeatsOccupied,

      @UI.lineItem.position: 9
      PaymentSum,

      SeatsMaxB,
      SeatsOccupiedB,
      SeatsMaxF,
      SeatsOccupiedF,

      /* Associations */
      _Book,
      _Currency,
      _FlightSchedule,
      _Ticket
}
