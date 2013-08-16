// Io - day 3, ex 3

// XML Logic
Builder := Object clone do (
  depth := ""

  forward := method(
    args := call message arguments
    name := call message name
    attrs := ""

    if(args size > 0 and args at(0) name == "curlyBrackets",
      doMessage(args removeFirst) foreach(k, v,
        attrs = " " .. k .. "=\"" .. v .. "\""
      )
    )
    writeln(depth, "<", name, attrs, ">")
    args foreach(
      arg,
      depth = depth .. "  "
      content := self doMessage(arg);
      if(content type == "Sequence", writeln(depth, content))
      depth = depth exSlice(0, -2)
    )
    writeln(depth, "</", name, ">")
  )
)
  
// Curly brace map logic
curlyBrackets := method(
  r := Map clone
  call message arguments foreach(arg,
    r doMessage(arg)
  )
  r
)

// Map Logic
OperatorTable addAssignOperator(":", "atParseHash")
Map atParseHash := method(
  self atPut(
    call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
    call evalArgAt(1)
  )
)
 
doString("Builder ul(
  {\"author\":\"Tate\"},
  li(a(\"Io\")),
  li(\"Lua\"),
  li(\"Javascript\")
)")
