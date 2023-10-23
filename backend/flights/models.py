import strawberry
import typing

@strawberry.type
class Metric:
    label: str
    value: str
    status: int

@strawberry.type
class Flight:
    flight_number: str
    origin: str
    destination: str
    departure: str
    arrival: str
    metrics: list[Metric]
