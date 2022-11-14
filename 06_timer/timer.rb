class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end
  def time_string
 
      sec = @seconds%60
      min = ((@seconds - sec)/60)%60
      hour = ((((@seconds -sec)/60)-min)/60)%60
      time = (hour < 10 ? "0": "") + hour.to_s 
      time = time + ":" + (min < 10 ? "0": "") + min.to_s
      time = time + ":" + (sec < 10 ? "0": "") + sec.to_s
      return time
    end
  end