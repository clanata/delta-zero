from .models import Flight, Metric

def get_flights():
    return [
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
