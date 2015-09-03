require 'timeout'

class Fibonacci

  def run
    while @running do
      @fibonacci << @fibonacci.last(2).inject(:+)
    end
  end

  def start(seconds)
    @fibonacci = [1, 1]
    continue seconds
  end

  def stop
    @running = false
    # puts @fibonacci
    puts @fibonacci.count
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

