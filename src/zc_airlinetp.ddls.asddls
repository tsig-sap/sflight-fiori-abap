@AbapCatalog.sqlViewName: 'ZCAIRLINETP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transaction Interface Airline'
@VDM.viewType: #CONSUMPTION

@OData.publish: true

@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.deleteEnabled: true

@ObjectModel.compositionRoot: true
@ObjectModel.draftEnabled: true

@ObjectModel.transactionalProcessingDelegated: true
@ObjectModel.semanticKey: ['Carrid']

define view ZC_AirlineTP
  as select from ZI_AirlineTP
  association [0..*] to ZC_AirlinePlaneTP as _AirlinePlaneTP on $projection.Carruuid = _AirlinePlaneTP.Carruuid
{
  key Carruuid,

      @EndUserText.label: 'Airline Code'
      Carrid,

      @EndUserText.label: 'Airline Name'
      Carrname,

      Currcode,
      Url,

      Create_Time,

      @EndUserText.label: 'Last Changed Time'
      LastChangeTime,

      @ObjectModel.createEnabled: true
      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      _AirlinePlaneTP
}
