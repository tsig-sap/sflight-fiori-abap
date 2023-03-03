@AbapCatalog.sqlViewName: 'ZIAIRLINEPLANETP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transaction Interface SCARPLAN'
@VDM.viewType: #BASIC

@ObjectModel: {
  createEnabled: true,
  updateEnabled: true,
  deleteEnabled: true,
  semanticKey: ['Planetype'],
  writeDraftPersistence: 'zzscarplan_draft',
  writeActivePersistence: 'zzscarplan'
}


define view ZI_AirlinePlaneTP
  as select from zzscarplan
  association [1..1] to ZI_AirlineTP as _AirlineTP on $projection.Carruuid = _AirlineTP.Carruuid
{
  key carplanuuid as Carplanuuid,
      carruuid    as Carruuid,
      planetype   as Planetype,
      snumber     as Snumber,

      @ObjectModel.association.type: [#TO_COMPOSITION_ROOT,#TO_COMPOSITION_PARENT]
      _AirlineTP
}
