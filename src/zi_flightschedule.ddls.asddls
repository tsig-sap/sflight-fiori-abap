@AbapCatalog.sqlViewName: 'ZIFIFLIGHTSCHED'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@EndUserText.label: 'Interface View for SPFLI'
define view ZI_FlightSchedule
  as select from spfli
  association [1..*] to ZI_Flight  as _Flight  on  $projection.Airline      = _Flight.Airline
                                               and $projection.FlightNumber = _Flight.FlightNumber
  association [1..1] to ZI_Airline as _Airline on  $projection.Airline = _Airline.Airline
{

  key spfli.carrid                          as Airline,
  key spfli.connid                          as FlightNumber,
      spfli.countryfr                       as CountryFrom,
      spfli.cityfrom                        as CityFrom,
      spfli.airpfrom                        as AirportFrom,
      spfli.countryto                       as CountryTo,
      spfli.cityto                          as CityTo,
      spfli.airpto                          as AirportTo,
      @EndUserText.label: 'Flight time'
      cast( spfli.fltime as abap.char(11) ) as FlightTime,
      spfli.deptime                         as DepartTime,
      spfli.arrtime                         as ArrivalTime,

      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      spfli.distance                        as Distance,

      @Semantics.unitOfMeasure: true
      spfli.distid                          as DistanceUnit,

      spfli.fltype                          as FlightType,
      spfli.period                          as Period,

      _Flight,
      _Airline
}
