class Timer
  #write your code here
end
attr_accessor :seconds

def initialize
  @seconds = 0 # a Timer class with a seconds attribute
end

# Define the time_string method that returns the time in the format
def time_string 
  # uses integer division and modulo arithmetic to perform the calculation
  hours = @seconds / 3600
  minutes = (@seconds % 3600) / 60
  seconds = @seconds % 60
  format("%02d:%02d:%02d", hours, minutes, seconds)
end
