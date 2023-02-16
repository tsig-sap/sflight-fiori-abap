@AbapCatalog.sqlViewName: 'ZCFLIGHTSCHEDULE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for SPFLI'

@ObjectModel.updateEnabled: true

@UI.headerInfo: {
  typeName: 'Flight Schedule',
  typeNamePlural: 'Flight Schedules',
  title: {
    type: #STANDARD,
    value: '_Airline.AirlineName'
  },
  description: {
    type: #STANDARD,
    value: 'FlightNumber'
  }
}

define view ZC_FlightSchedule
  as select from ZI_FlightSchedule
  association to ZC_FlightCounter on  $projection.Airline      = ZC_FlightCounter.Airline
                                  and $projection.FlightNumber = ZC_FlightCounter.FlightNumber
{

      @UI.facet: [{
        label: 'Basic Data',
        type: #COLLECTION,
        id: 'BasicDataCollectionFacet',
        purpose: #STANDARD
      },
      {
        label: 'Flight From',
        type: #FIELDGROUP_REFERENCE,
        id: 'FlightFromGroupReferenceFacet',
        parentId: 'BasicDataCollectionFacet',
        purpose: #STANDARD,
        targetQualifier: 'FlightFromFieldGroup'
      },
      {
        label: 'Flight To',
        type: #FIELDGROUP_REFERENCE,
        id: 'FlightToGroupReferenceFacet',
        parentId: 'BasicDataCollectionFacet',
        purpose: #STANDARD,
        targetQualifier: 'FlightToFieldGroup'
      },
      {
        label: 'Time Schedule',
        type: #FIELDGROUP_REFERENCE,
        id: 'TimeScheduleGroupReferenceFacet',
        purpose: #STANDARD,
        targetQualifier: 'TimeScheduleFieldGroup'
      },
      {
        label: 'Other Information',
        type: #FIELDGROUP_REFERENCE,
        id: 'OtherInformationGroupReferenceFacet',
        purpose: #STANDARD,
        targetQualifier: 'OtherInformationFieldGroup'
      }]


      @UI.selectionField.position: 1
      @UI.lineItem.position: 1
      @Consumption.valueHelpDefinition.association: '_Airline'
      @ObjectModel.text.association: '_Airline'
  key Airline,

      @UI.selectionField.position: 2
      @UI.lineItem.position: 2
      @Consumption.valueHelpDefinition: [{
        entity: {
          name: 'ZI_FlightNumberVH',
          element: 'FlightNumber'
        },
        distinctValues: true,
        additionalBinding: [{
          element: 'Airline',
          localElement: 'Airline'
        }]
      }]
  key FlightNumber,

      @UI.selectionField.position: 3
      @UI.lineItem.position: 3
      @EndUserText.label: 'Depart. country'
      @UI.fieldGroup: [{
        qualifier: 'FlightFromFieldGroup',
        position: 1
      }]
      @Consumption.valueHelpDefinition: [{entity: {
        name: 'I_CountrySrchHelp',
        element: 'Country'
      }}]
      CountryFrom,

      @UI.selectionField.position: 4
      @UI.lineItem.position: 4
      @UI.fieldGroup: [{
        qualifier: 'FlightFromFieldGroup',
        position: 2
      }]
      CityFrom,

      @UI.lineItem.position: 5
      @UI.fieldGroup: [{
        qualifier: 'FlightFromFieldGroup',
        position: 3
      }]
      AirportFrom,

      @UI.lineItem.position: 6
      @EndUserText.label: 'Arrival country'
      @UI.fieldGroup: [{
        qualifier: 'FlightToFieldGroup',
        position: 1
      }]
      @Consumption.valueHelpDefinition: [{entity: {
        name: 'I_CountrySrchHelp',
        element: 'Country'
      }}]
      CountryTo,

      @UI.lineItem.position: 7
      @UI.fieldGroup: [{
        qualifier: 'FlightToFieldGroup',
        position: 2
      }]
      CityTo,

      @UI.lineItem.position: 8
      @UI.fieldGroup: [{
        qualifier: 'FlightToFieldGroup',
        position: 3
      }]
      AirportTo,

      @UI.fieldGroup: [{
        qualifier: 'TimeScheduleFieldGroup',
        position: 1
      }]
      FlightTime,

      @UI.fieldGroup: [{
        qualifier: 'TimeScheduleFieldGroup',
        position: 2
      }]
      DepartTime,

      @UI.fieldGroup: [{
        qualifier: 'TimeScheduleFieldGroup',
        position: 3
      }]
      ArrivalTime,

      @UI.fieldGroup: [{
        qualifier: 'OtherInformationFieldGroup',
        position: 1
      }]
      Distance,

      @UI.fieldGroup: [{
        qualifier: 'OtherInformationFieldGroup',
        position: 2
      }]
      DistanceUnit,

      @UI.fieldGroup: [{
        qualifier: 'OtherInformationFieldGroup',
        position: 3
      }]
      FlightType,

      @UI.fieldGroup: [{
        qualifier: 'OtherInformationFieldGroup',
        position: 4
      }]
      Period,

      /* Associations */
      _Flight,
      _Airline
}
