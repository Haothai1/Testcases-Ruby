class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    # Calculate hours, minutes, and seconds
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds = @seconds % 60

    # Format the time as "HH:MM:SS" format
    format("%02d:%02d:%02d", hours, minutes, seconds)
  end

  # Optional helper method to pad numbers with zeroes
  def padded(num)
    format("%02d", num)
  end
end
