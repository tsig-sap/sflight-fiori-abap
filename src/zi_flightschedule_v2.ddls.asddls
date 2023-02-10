@AbapCatalog.sqlViewName: 'ZIFIFLIGHTSCH_V2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for SPFLI'
define view ZI_FLIGHTSCHEDULE_V2
  as select from spfli
  association [1..*] to ZI_FLIGHT_V2 as _Flight on  $projection.Airline      = _Flight.Airline
                                                and $projection.FlightNumber = _Flight.FlightNumber
{

  key spfli.carrid    as Airline,
  key spfli.connid    as FlightNumber,
      spfli.countryfr as CountryFrom,
      spfli.cityfrom  as CityFrom,
      spfli.airpfrom  as AirportFrom,
      spfli.countryto as CountryTo,
      spfli.cityto    as CityTo,
      spfli.airpto    as AirportTo,
      spfli.fltime    as FlightTime,
      spfli.deptime   as DepartureTime,
      spfli.arrtime   as ArrivalTime,

      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      spfli.distance  as Distance,

      @Semantics.unitOfMeasure: true
      spfli.distid    as DistanceUnit,
      spfli.fltype    as FlightType,
      spfli.period    as Period,

      _Flight
}
