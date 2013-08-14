// io - day 2, ex 1
fib := method(n, if(n > 2, fib(n - 2) + fib(n - 1), 1))

("fib(0):" .. fib(0)) println
("fib(1):" .. fib(1)) println
("fib(2):" .. fib(2)) println
("fib(3):" .. fib(3)) println
("fib(4):" .. fib(4)) println
("fib(5):" .. fib(5)) println
("fib(6):" .. fib(6)) println
("fib(7):" .. fib(7)) println
("fib(8):" .. fib(8)) println
("fib(9):" .. fib(9)) println
