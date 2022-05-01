class Timer
  #write your code here
  attr_accessor :seconds

  def seconds
    @seconds = 0
  end

  def time_string
    time = Time.new("%H:%M:%S")
    time.strftime("%H:%M:%S")

    hours = @seconds/3600
    remainder = @seconds%3600
    sprintf("%02d:%02d:%02d", hours, remainder/60, remainder%60)
  end
end



