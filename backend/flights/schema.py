import strawberry
import typing

from .models import Flight
from .resolvers import get_flights

@strawberry.type
class Query:
    flights: typing.List[Flight] = strawberry.field(resolver=get_flights)

schema = strawberry.Schema(query=Query)
