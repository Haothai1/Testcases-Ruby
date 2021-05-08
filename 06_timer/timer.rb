class Timer
  
  
  def seconds
    @secs ||= 0
  end
  
  def seconds=(sec)
    @secs = sec
  end

  def time_string
    seconds = @secs
    seconds = Time.at(seconds).utc.strftime("%T")
  end

end