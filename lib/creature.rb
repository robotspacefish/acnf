class Creature < ActiveRecord::Base
  def time=(time)
    times = []
    if time == "All day"
      times = [0, 23]
    else
      times = time.split(" - ").collect do |t|
      hour, meridiem = t.split(" ")
      if meridiem == "PM"
        hour = hour.to_i + 12
      end
      hour.to_s
    end
    end

    @start_time = times.first
    @end_time = times.last
    @time = time
  end
end