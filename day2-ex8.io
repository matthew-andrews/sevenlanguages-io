// Io - day 2, ex 8

"Guess a number between 1 and 100" println
goal := Random value(0, 100) >> 0
previous := -1

10 repeat(
  guess := File standardInput() readLine() asNumber() abs()
  if(goal == guess, "You did it" println; break) 
  "Incorrect answer" println
  if (previous != -1,
    if((goal - guess) abs <= (goal - previous) abs, "But you're getting warmer... :-)" println, "And you're getting colder :-(" println),
    ("Prev was " .. previous) println
  )
  previous = guess
)
("The answer was: " .. goal) println
