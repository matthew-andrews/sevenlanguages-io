// Io - day 2, ex 5, 6 and 7

// My matrix object
Matrix := List clone

dim := method(x, y,
  o := Matrix clone
  for(i, 0, x - 1,
    o append(list())
    for(j, 0, y - 1,
      o at(i) append(0)
    )
  )
  o
)

Matrix get := method(x, y, self at(x) at(y))
Matrix set := method(x, y, v, (self at(x) atPut(y, v)))
Matrix serialize := method(
  o := ""
  self foreach(vx,
    vx foreach(v, o = o .. v .. " ")
    o = o exSlice(0, -1) .. "\n"
  )
  o
)
Matrix print := method(self serialize print)
Matrix transpose := method(
  o := dim(self at(0) size, self size)
  self foreach(x, vx,
    vx foreach(y, v, o set(y, x, v))
  )
  o
)
Matrix write := method(name,
  f := File with(name .. ".matrix")
  f remove
  f openForUpdating
  f write(self serialize)
  f close
)
Matrix read := method(name,
  s := File with(name .. ".matrix") openForReading contents
  data := (s split("\n"))
  
  data foreach(k, v,
    data atPut(k, v split(" "))
  )
  o := dim(data size, data at(0) size)
  data foreach(x, vx,
    vx foreach(y, v, o set(x, y, v))
  )
  o
)

a := dim(2, 3)

a set(1, 0, 4)
a set(0, 1, 1)
a set(0, 2, 5)

("\nAt (0, 2): " .. a get(0, 2)) println

a print
a transpose print

a write("ma")

"\nNow to read back that Matrix:" println
b := Matrix read("ma")
b print
