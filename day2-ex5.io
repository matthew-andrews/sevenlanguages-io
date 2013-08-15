// Io - day 2, ex 5 and 6

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
Matrix println := method(
  self transpose foreach(vx,
    vx foreach(v, (v .. " ") print)
    "\n" print
  )
)
Matrix transpose := method(
  o := dim(self at(0) size, self size)
  self foreach(x, vx,
    vx foreach(y, v, o set(y, x, v))
  )
  o
)

a := dim(2, 3)

a set(1, 0, 4)
a set(0, 1, 1)
a set(0, 2, 5)

("At (0, 2): " .. a get(0, 2)) println

a println
a transpose println
