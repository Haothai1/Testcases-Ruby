
class Timer

  attr_accessor :seconds

  def initialize

    @seconds = 0
  
  end

  def padded i

    "#{i}".rjust(2, '0')
    
  end

  def time_string
    
    hours = @seconds / 3600

    mins = (@seconds % 3600) / 60

    seconds = @seconds % 60

    @time_string = [hours, mins, seconds].map(&method(:padded)).join(":")  

  end

end
