DEGREES_PER_HOUR = 30
MINUTES_PER_HOUR = 60
DEGREES_PER_MIN = 6
MAX_ALLOWED_DEGREES = 180
MAX_DEGREES = 360

def clock_angle(time)
  split_time = time.split(':')

  if !split_time.length.eql?(2)
      raise ArgumentError.new('Must be string with format "hour:minute"!')
  else
    hour = split_time[0].to_f
    minute = split_time[1].to_f

    hour_degree = hour * DEGREES_PER_HOUR +
      ((minute / MINUTES_PER_HOUR) * DEGREES_PER_HOUR)
    minute_degree = minute * DEGREES_PER_MIN

    angle = (hour_degree - minute_degree).abs

    angle > MAX_ALLOWED_DEGREES ? MAX_DEGREES - angle : angle
  end
end
