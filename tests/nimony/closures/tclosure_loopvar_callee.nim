# closure call through a for-loop variable over seq[proc]
import std/syncio

var procs: seq[proc () {.closure.}] = @[]
procs.add(proc () {.closure.} = echo "hi")
for p in procs:
  p()

type Getter = proc (x: var int): var int {.closure.}

proc pick(x: var int; gs: seq[Getter]): var int =
  for g in gs:
    return g(x)
  result = x

proc main =
  let k = 3
  var fs: seq[proc (x: int): int {.closure.}] = @[]
  fs.add(proc (x: int): int {.closure.} = x * k)
  let cbs = fs
  for f in cbs:
    echo f(10)

  var gs: seq[Getter] = @[]
  gs.add(proc (x: var int): var int {.closure.} = result = x)
  var v = 1
  pick(v, gs) = 5
  echo v

main()
