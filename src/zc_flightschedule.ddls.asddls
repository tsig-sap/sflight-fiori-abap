@AbapCatalog.sqlViewName: 'ZCFLIGHTSCHEDULE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for SPFLI'

@Search.searchable: true

@UI.headerInfo: {
  typeName: 'Flight Schedule',
  typeNamePlural: 'Flight Schedules',
  title.value: '_Airline.AirlineName',
  description.value: 'FlightNumber'
}

define view ZC_FlightSchedule
  as select from ZI_FlightSchedule
  association [0..*] to ZC_Flight               as _Flight               on  $projection.Airline      = _Flight.Airline
                                                                         and $projection.FlightNumber = _Flight.FlightNumber
  association [0..*] to ZC_FlightCounterPerYear as _FlightCounterPerYear on  $projection.Airline      = _FlightCounterPerYear.Airline
                                                                         and $projection.FlightNumber = _FlightCounterPerYear.FlightNumber

  association        to ZI_VH_GeoCity           as _VH_GeoCity_From      on  $projection.CityFrom    = _VH_GeoCity_From.City
                                                                         and $projection.CountryFrom = _VH_GeoCity_From.Country
  association        to ZI_VH_GeoCity           as _VH_GeoCity_To        on  $projection.CityTo    = _VH_GeoCity_To.City
                                                                         and $projection.CountryTo = _VH_GeoCity_To.Country
{
      @UI.facet: [{
        purpose: #HEADER,
        label: 'Origin',
        type: #FIELDGROUP_REFERENCE,
        targetQualifier: 'FlightFrom'
      },{
        purpose: #HEADER,
        label: 'Destination',
        type: #FIELDGROUP_REFERENCE,
        targetQualifier: 'FlightTo'
      },{
        purpose: #STANDARD,
        label: 'General Information',
        type: #IDENTIFICATION_REFERENCE
      },{
        purpose: #STANDARD,
        type: #COLLECTION,
        label: 'Analytics',
        id: 'ChartCollectionFacet'
      },{
        label: 'Flight Count Per Year',
        type: #CHART_REFERENCE,
        targetElement: '_FlightCounterPerYear',
        parentId: 'ChartCollectionFacet'
      },{
        label: 'Related Flights',
        type: #LINEITEM_REFERENCE,
        targetElement: '_Flight'
      }]

      @UI.selectionField.position: 1
      @UI.lineItem.position: 1
      @UI.lineItem.importance: #HIGH
      @Consumption.valueHelpDefinition.association: '_Airline'
      @ObjectModel.text.association: '_Airline'
      @Search.defaultSearchElement: true
  key Airline,

      @UI.selectionField.position: 2
      @UI.lineItem.position: 2
      @UI.lineItem.importance: #HIGH
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
      @Consumption.valueHelpDefinition: [{entity: {
        name: 'I_CountrySrchHelp',
        element: 'Country'
      }}]
      @UI.fieldGroup: [{ position: 1,qualifier: 'FlightFrom' }]
      CountryFrom,

      @UI.selectionField.position: 4
      @UI.lineItem.position: 4
      @Consumption.valueHelpDefinition: [{ entity: {
        name: 'ZI_VH_GeoCity',
        element: 'City'
      } }]
      @UI.fieldGroup: [{ position: 2,qualifier: 'FlightFrom' }]
      CityFrom,

      @UI.lineItem.position: 5
      @UI.fieldGroup: [{ position: 3,qualifier: 'FlightFrom' }]
      AirportFrom,

      @UI.lineItem.position: 6
      @EndUserText.label: 'Arrival country'
      @Consumption.valueHelpDefinition: [{entity: {
        name: 'I_CountrySrchHelp',
        element: 'Country'
      }}]
      @UI.fieldGroup: [{ position: 1,qualifier: 'FlightTo' }]
      CountryTo,

      @UI.lineItem.position: 7
      @UI.fieldGroup: [{ position: 2,qualifier: 'FlightTo' }]
      CityTo,

      @UI.lineItem.position: 8
      @UI.fieldGroup: [{ position: 3,qualifier: 'FlightTo' }]
      AirportTo,

      @UI.identification.position: 1
      FlightTime,

      @UI.identification.position: 2
      DepartTime,

      @UI.identification.position: 3
      ArrivalTime,

      @UI.identification.position: 4
      Distance,

      @UI.hidden: true
      DistanceUnit,

      @UI.identification.position: 5
      FlightType,

      @UI.identification.position: 6
      Period,

      fltp_to_dec(_VH_GeoCity_From.Longitude as abap.dec(10,5))*-1 as FromLongitude,
      fltp_to_dec(_VH_GeoCity_From.Latitude as abap.dec(10,5))     as FromLatitude,

      fltp_to_dec(_VH_GeoCity_To.Longitude as abap.dec(10,5))*-1   as ToLongitude,
      fltp_to_dec(_VH_GeoCity_To.Latitude as abap.dec(10,5))       as ToLatitude,

      _VH_GeoCity_From,

      _VH_GeoCity_To,

      /* Associations */
      _Flight,
      _FlightCounterPerYear,
      _Airline
}
