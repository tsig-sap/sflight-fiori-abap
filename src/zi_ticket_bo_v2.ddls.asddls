@AbapCatalog.sqlViewName: 'ZIFITICKET_BO_V2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for STICKET'

@ObjectModel: {
  createEnabled: true,
  updateEnabled: true,
  deleteEnabled: true,

  modelCategory: #BUSINESS_OBJECT,
  representativeKey: 'ticket',
  semanticKey: ['carrid','connid','fldate','bookid','customid','ticket'],
  compositionRoot: true,
  transactionalProcessingEnabled: true,
  writeActivePersistence: 'sticket'
}

define view ZI_TICKET_BO_V2
  as select from sticket
{
  key carrid,
  key connid,
  key fldate,
  key bookid,
  key customid,
  key ticket,
      place,
      archive_
}
