@AbapCatalog.sqlViewName: 'ZIFIAIRLINETP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Airline Transactional'
@VDM.viewType: #BASIC

@ObjectModel: {
  createEnabled: true,
  updateEnabled: true,
  deleteEnabled: true,
  draftEnabled: true,
  modelCategory: #BUSINESS_OBJECT,
  compositionRoot: true,
  semanticKey: ['Carrid'],
  transactionalProcessingEnabled: true,
  writeDraftPersistence: 'zscarr_draft',
  writeActivePersistence: 'zzscarr'
}

define view ZI_AirlineTP
  as select from zzscarr
  association [0..*] to ZI_AirlinePlaneTP as _AirlinePlaneTP on $projection.Carruuid = _AirlinePlaneTP.Carruuid
{
      @ObjectModel.readOnly: true
  key carruuid                           as Carruuid,

      carrid                             as Carrid,
      carrname                           as Carrname,

      @Semantics.currencyCode: true
      currcode                           as Currcode,

      url                                as Url,

      @ObjectModel.readOnly: true
      create_date                        as Create_Date,

      @ObjectModel.readOnly: true
      create_time                        as Create_Time,

      @ObjectModel.readOnly: true
      create_by                          as Create_By,

      @ObjectModel.readOnly: true
      concat( create_date, create_time ) as LastChangeTime,

      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      @ObjectModel.association.draft.enabled: true
      _AirlinePlaneTP
}
