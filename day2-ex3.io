// io - day 2, ex 3 and 4

List sum := method(
  o := 0
  self foreach(v,
    if(v type == "List", o = o + v sum; continue)
    if(v type == "Number", o = o + v; continue)
    Exception raise("can't touch this.  (" .. v .. ")")
  )
  o
)

List myAverage := method(
  self sum / self size
)


// Test arrays
2d := list(
  list(1, 2, 3),
  list(10, 20, 30),
  list(100, 200, 300)
)

1d := list(1, 2, 3, 4, 5, 6, 7, 8, 9)
bad := list(1, 2, 3, "no", 4, 5, 6, 7, 8, 9)

("2d's total: " .. 2d sum) println
("1d's average: " .. 1d myAverage) println
("bad's average: " .. bad myAverage) println
