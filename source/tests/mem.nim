
test "testMem":
  while true:
    var t = newKTable()
    t.addColumn[:int64]("aaa")
    t.addColumn[:nil]("bbb")
    t.addRow(%3, %"30")
    t.addRow(%4, %"40")
    t.addRow(%5, %"50")
    echo t
    var i = %1122
    var d = newKDict[int, nil]()
    d[1] = %"one"
    d[2] = %"two"
    echo d
    var dd = newKDict[int, int64]()
    dd[1] = %11
    dd[2] = %22
    echo dd
    var l = newKList()
    l.add(%"aa".cstring)
    echo l
    var v1 = low.newKVec[int]()
    v1.add(10)
    v1.add(20)
    var v2 = low.newKVec[KSym]()
    v2.add("100")
    v2.add("200")
    var v3 = low.newKVec[nil]()
    v3.add("100")
    v3.add("200")
    echo v3
    var vv = low.newKList()
    vv.add(v1)
    vv.add(v2)
    for x in vv:
      for y in x:
        echo y
    echo vv

# test "testMemFailed":
#   for i in 0..100:
#     echo "DEBUG1"
#     let vv = K(k: knk(0))
#     for i in vv.k:
#       discard
#     let x = K(k: ktn(11, 0))
#     echo "DEBUG2"

