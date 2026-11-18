
import std / [syncio]

type
  TA = array[0..3, int]

proc at(a: TA; i: int): int = a[i]

proc main(a: TA) =
  var i = 2
  while true:
    echo at(a, i)
    flushFile(stdout)
    dec i

main([1, 2, 3, 4])
