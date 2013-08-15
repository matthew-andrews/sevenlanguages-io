// Io - day 3, ex 1
depth := ""

Builder := Object clone
Builder forward := method(
  writeln(depth, "<", call message name, ">")
  call message arguments foreach(
    arg,
    depth = depth .. "  "
    content := self doMessage(arg);
    if(content type == "Sequence", writeln(depth, content))
    depth = depth exSlice(0, -2)
  )
  writeln(depth, "</", call message name, ">")
)
Builder ul(
  li(a("Io")),
  li("Lua"),
  li("Javascript")
)
