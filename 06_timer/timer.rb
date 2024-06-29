class Timer
  attr_accessor :seconds
  def initialize(seconds = 0)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def seconds(seconds = 0)
    @seconds = seconds
  end

  def padded(str)
    return ("0#{str}")[-2..-1]
  end

  def time_string()
    s_time = ""
    h = (@seconds / 3600).floor
    m = ((@seconds - h*3600) / 60).floor
    s = (@seconds - (h*3600) - (m*60)).floor
    s_time = "#{padded(h)}:#{padded(m)}:#{padded(s)}"
    return s_time
  end
end

timer = Timer.new
puts timer.seconds
timer.seconds = 3
puts timer.time_string
timer.seconds(6300)
puts timer.time_string
timer.seconds(9)
puts timer.time_string
timer.seconds(61)
puts timer.time_string