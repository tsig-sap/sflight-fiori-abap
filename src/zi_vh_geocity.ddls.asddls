@AbapCatalog.sqlViewName: 'ZIFIVHGEOCITY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for City'
@ObjectModel.dataCategory: #VALUE_HELP
@VDM.viewType: #BASIC

@Search.searchable: true

define view ZI_VH_GeoCity
  as select from sgeocity
{
      @Search: {
        defaultSearchElement: true,
        ranking: #HIGH,
        fuzzinessThreshold: 0.8
      }
  key city      as City,

      @Search.defaultSearchElement: true
  key country   as Country,
      latitude  as Latitude,
      longitude as Longitude
}
