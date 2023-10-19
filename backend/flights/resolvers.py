from .models import Flight

def get_flights():
    return [
        Flight(
            id = "1",
            flight_number = "DL1234",
            origin = "ATL",
            dest = "LAX",
            depart = "2023-10-19T12:05Z",
            arrive = "2023-10-19T1:04Z",
            seats_available = "10",
            pred_clear = "64",
            pred_d1_clear = "0",
        ),
    ]
