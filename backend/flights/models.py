import strawberry
from typing import Optional

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

@strawberry.input
class GetFlightsInput:
    origin: Optional[str] = None
    destination: Optional[str] = None
    departure: Optional[str] = None
