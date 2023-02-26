@AbapCatalog.sqlViewName: 'ZCFLCNTRPERYEAR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Fight Count Each Year'

@VDM.viewType: #CONSUMPTION

@UI.chart: [{
  title: 'Flights Per Year',
  chartType: #DONUT,
  measures: ['FlCount'],
  dimensions: ['FlightYear']
}]

define view ZC_FlightCounterPerYear
  as select from ZI_Flight
{
  key Airline,
  key FlightNumber,
  key FlightDate,

      @EndUserText.label: 'Year'
      substring(ZI_Flight.FlightDate,1,4) as FlightYear,

      @DefaultAggregation: #SUM
      @EndUserText.label: 'Number of Flights'
      cast (1 as abap.int4)               as FlCount
}
