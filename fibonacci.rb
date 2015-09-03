require 'timeout'

class Fibonacci

  def run
    while @running do
      @fibonacci << @fibonacci.last(2).inject(:+)
      @fibonacci.shift
      @count += 1
    end
  end

  def start(seconds)
    @count = 3
    @fibonacci = [1, 1]
    continue seconds
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
end

