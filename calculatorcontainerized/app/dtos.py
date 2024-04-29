from dataclasses import dataclass
from typing import TypedDict


class SumResponse(TypedDict):
    a: float
    b: float
    sum: float
    
    
class MultiplyResponse(TypedDict):
    a: float
    b: float
    product: float
    
    
class DivideResponse(TypedDict):
    numerator: float
    denominator: float
    quotient: float