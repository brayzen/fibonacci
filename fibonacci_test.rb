require './fibonacci'

fibtest = Fibonacci.new
fibtest.start 1


p "1: #{fibtest.find_fib(1)}"
p "2: #{fibtest.find_fib(2)}"
p "3: #{fibtest.find_fib(3)}"
p "4: #{fibtest.find_fib(4)}"
p "5: #{fibtest.find_fib(5)}"
p "6: #{fibtest.find_fib(6)}"
p "7: #{fibtest.find_fib(7)}"
p "10: #{fibtest.find_fib(10)}"
# p fibtest.find_fib(0)
# p fibtest.find_fib(-1)

