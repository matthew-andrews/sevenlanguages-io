// Io - day 3, ex 2

squareBrackets := method(
  r := List clone
  call message arguments foreach(arg,
    r append(arg)
  )
  r
)

rawFruit := "[
  \"Apple\",
  \"Banana\",
  \"Cherry\"
]"

fruit := doString(rawFruit)
fruit println
