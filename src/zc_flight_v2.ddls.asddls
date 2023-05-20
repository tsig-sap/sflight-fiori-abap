@AbapCatalog.sqlViewName: 'ZCFLIGHTV2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View SFLIGHT V2'
@VDM.viewType: #CONSUMPTION

@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true

define view ZC_Flight_V2
  as select from ZI_Flight_V2
  association [0..*] to ZC_Booking_V2 as _Booking_V2 on  $projection.Airline      = _Booking_V2.Airline
                                                     and $projection.FlightNumber = _Booking_V2.FlightNumber
  association [1..1] to ZI_Airline    as _Airline    on  $projection.Airline = _Airline.Airline
{

      @Consumption.valueHelpDefinition.association: '_Airline'
      @ObjectModel.text.association: '_Airline'
  key ZI_Flight_V2.Airline,

      @Consumption.valueHelpDefinition: [{
        entity: {
          name: 'ZC_VH_FlightNumber',
          element: 'FlightNumber'
        },
        distinctValues: true,
        additionalBinding: [{
          element: 'Airline',
          localElement: 'Airline'
        }]
      }]
  key ZI_Flight_V2.FlightNumber,
  key ZI_Flight_V2.FlightDate,
      ZI_Flight_V2.Price,
      
      @ObjectModel.foreignKey.association: '_Currency'
      ZI_Flight_V2.Currency,
      
      ZI_Flight_V2.PlaneType,
      ZI_Flight_V2.SeatsMax,
      ZI_Flight_V2.SeatsOccupied,
      ZI_Flight_V2.PaymentSum,
      ZI_Flight_V2.SeatsMaxB,
      ZI_Flight_V2.SeatsOccupiedB,
      ZI_Flight_V2.SeatsMaxF,
      ZI_Flight_V2.SeatsOccupiedF,

      /* Associations */
      ZI_Flight_V2._Currency,
      _Booking_V2,
      _Airline
}
