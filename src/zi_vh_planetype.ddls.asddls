@AbapCatalog.sqlViewName: 'ZIFIVHPLANETYPE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View SAPLANE Value Help'
@ObjectModel.dataCategory: #VALUE_HELP
@VDM.viewType: #BASIC
define view ZI_VH_PlaneType
  as select from saplane
{
  key planetype  as Planetype,
      seatsmax   as Seatsmax,
      producer   as Producer,
      seatsmax_b as SeatsmaxB,
      seatsmax_f as SeatsmaxF
}
