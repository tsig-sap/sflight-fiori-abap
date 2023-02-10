@AbapCatalog.sqlViewName: 'ZIFITICKET'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for STICKET'
define view ZI_Ticket
  as select from sticket
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
