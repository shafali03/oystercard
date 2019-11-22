
class Journey

  attr_reader :entry_station, :entry_zone, :exit_station, :exit_zone
  
 def start(station)
   @entry_station = station.name
   @entry_zone = station.zone
 end

 def finish(station)
   @exit_station = station.name
   @exit_zone = station.zone
 end

end