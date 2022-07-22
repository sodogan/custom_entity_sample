@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agency View - CDS Data Model'
define view entity ZSODOGAN_I_BOOKING
  as select from zsodogan_booking as Bookings
  association to parent ZSODOGAN_I_TRAVEL_U as _Travel on $projection.TravelId = _Travel.Travel_ID
{
  key travel_id       as TravelId,
  key booking_id      as BookingId,
      booking_date    as BookingDate,
      customer_id     as CustomerId,
      carrier_id      as CarrierId,
      connection_id   as ConnectionId,
      flight_date     as FlightDate,
      flight_price    as FlightPrice,
      currency_code   as CurrencyCode,
      last_changed_at as LastChangedAt,

      /* Associations */
       _Travel
}
