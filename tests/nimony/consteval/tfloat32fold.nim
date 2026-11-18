import std/syncio

# Arithmetic on float32 constants folds as the generated C computes it at
# run time: each operand and each result rounded to float32.
const
  A: float32 = 0.42
  B: float32 = 0.24
  C: float32 = 0.3
  D: float64 = 0.42
  E: float64 = 0.24

let a = A
let b = B
let c = C

echo A + B
echo A - B
echo A * A
echo A / C
echo A * A / C
echo A + B == a + b, " ", A - B == a - b, " ", A * A == a * a, " ", A / C == a / c,
  " ", A * A / C == a * a / c
echo D - E
