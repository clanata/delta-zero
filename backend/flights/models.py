import strawberry

@strawberry.type
class Flight:
    id: str
    flight_number: str
    origin: str
    dest: str
    depart: str
    arrive: str
    seats_available: str
    pred_clear: str
    pred_d1_clear: str
