@AbapCatalog.sqlViewName: 'ZIFITICKET_V2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for STICKET'

@ObjectModel: {
  transactionalProcessingDelegated: true,
  createEnabled: true
}

define view ZI_TICKET_V2
  as select from ZI_TICKET_BO_V2
{
  key carrid   as Airline,
  key connid   as FlightNumber,
  key fldate   as FlightDate,
  key bookid   as BookingId,
  key customid as Customer,
  key ticket   as Ticket,
      place    as Place,
      archive_ as Archive
}
