class Timer
  def initialize
  	@seconds = 0
  	@hours = 0
  	@minutes = 0
  end

  def seconds=(sec)
  	@hours = sec / 3600
  	sec -=  3600 * @hours
  	@minutes = sec / 60
  	sec -= 60 * @minutes
  	@seconds = sec
  end

  def seconds
  	@seconds
  end

  def time_string
  	@hours < 10 ? hours_string = "0#{@hours}:" : hours_string = "#{@hours}:"
  	@minutes < 10 ? minutes_string = "0#{@minutes}:" : minutes_string = "#{@minutes}:"
  	@seconds < 10 ? seconds_string = "0#{@seconds}" : seconds_string = "#{@seconds}"
  	hours_string + minutes_string + seconds_string
  end
end
