class Timer
  #write your code here
  attr_accessor :seconds

  def seconds
    @seconds = 0
  end

  def time_string
    time = Time.new("%H:%M:%S")
    time.strftime("%H:%M:%S")

    hours = @seconds/(60*60)
    remainder = @seconds%(60*60)
    sprintf("%02d:%02d:%02d", hours, remainder/60, remainder%60) #saves the formatted text into a string variable
  end
end