from typing import Optional
from .models import Flight, Metric, GetFlightsInput

flights = [
    Flight(
        flight_number = "DL1234",
        origin = "ATL",
        destination = "LAX",
        departure = "12/31/23 10:01",
        arrival = "12/31/23 12:21",
        metrics = [
            Metric(
                label = "",
                value = "Good to Fly",
                status = 0,
            ),
            Metric(
                label = "Clear Coach",
                value = "70%",
                status = 1,
            ),
            Metric(
                label = "Seats Available",
                value = "10",
                status = 0,
            ),
        ],
    ),
    Flight(
        flight_number = "DL5678",
        origin = "MSP",
        destination = "BOS",
        departure = "12/31/23 14:41",
        arrival = "12/31/23 17:27",
        metrics = [
            Metric(
                label = "",
                value = "Not Good to Fly",
                status = 2,
            ),
            Metric(
                label = "Clear Coach",
                value = "20%",
                status = 2,
            ),
            Metric(
                label = "Seats Available",
                value = "8",
                status = 1,
            ),
        ],
    ),
]

def get_flights(input: GetFlightsInput):
    # TODO: replace with teradatasql call with where clause instead of filter

    resp = flights
    if input.origin:
        resp = filter(lambda flight: flight.origin == input.origin, resp)
    if input.destination:
        resp = filter(lambda flight: flight.destination == input.destination, resp)
    if input.departure:
        resp = filter(lambda flight: flight.depature == input.depature, resp)
    return resp
