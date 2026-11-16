import mcyc6_b {.cyclic.}
export mcyc6_b

proc twice*(x: int): int = x * 2

proc callsB*(): int = twicePlusOne(3)
