class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    # hrs = seconds / 3600
    # mins = seconds % 3600 / 60
    # secs = seconds % 3600 % 60
    # "%02d:%02d:%02d" % [hrs, mins, secs]

    hrs = padded(seconds / 3600)
    mins = padded(seconds % 3600 / 60)
    secs = padded(seconds % 3600 % 60)
    "#{hrs}:#{mins}:#{secs}"
  end

  def padded(n)
    "%02d" % n
  end
end
