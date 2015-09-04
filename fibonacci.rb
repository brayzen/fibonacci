require 'timeout'

class Fibonacci

  def start(seconds)
    @count = 2
    @fibonacci = [0, 1]
    continue seconds
  end

  def run
    while @running do
      @fibonacci.push(@fibonacci.last(2).inject(:+)).shift
      @count += 1
    end
  end


  def stop
    @running = false
    puts @fibonacci.last.to_s.length
    puts @count
  end

  def continue(seconds)
    @running = true
    begin
      Timeout::timeout(seconds) { run }
    rescue Timeout::Error
      stop
    end
  end

  def find_fib(n)
    raise "Can't have a number less than or equal to 0" if n <= 0
    return 1 if n == 2
    return 0 if n == 1
    @fibonacci = [0, 1]
    (n - 1).times {@fibonacci.push(@fibonacci.last(2).inject(:+)).shift}
  end
end

