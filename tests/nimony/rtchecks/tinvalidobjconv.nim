
import std / [syncio]

type
  A = ref object of RootObj
  B = ref object of A
    x: int

proc main(a: A) =
  echo "before"
  flushFile(stdout)
  let b = B(a)
  echo b.x

main(A())
