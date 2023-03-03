@AbapCatalog.sqlViewName: 'ZCAIRLINEPLANETP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View SCARPLAN'
@VDM.viewType: #CONSUMPTION

@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.deleteEnabled: true
@ObjectModel.transactionalProcessingDelegated: true
@ObjectModel.semanticKey: ['Planetype']

define view ZC_AirlinePlaneTP
  as select from ZI_AirlinePlaneTP
  association [1..1] to ZC_AirlineTP as _AirlineTP on $projection.Carruuid = _AirlineTP.Carruuid
{
  key Carplanuuid,
      Carruuid,      

      @Consumption.valueHelpDefinition: [{ entity: {
        name: 'ZI_VH_PlaneType',
        element: 'Planetype'
      } }]
      Planetype,
      Snumber,
      /* Associations */
      @ObjectModel.association.type: [#TO_COMPOSITION_PARENT,#TO_COMPOSITION_ROOT]
      _AirlineTP
}
