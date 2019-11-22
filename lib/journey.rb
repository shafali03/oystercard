
class Journey


  attr_reader :entry_station, :entry_zone, :exit_station, :exit_zone
  
  MIN_FARE = 1
  PENALTY = 6 

 def start(station)
   @entry_station = station.name
   @entry_zone = station.zone
 end

 def finish(station)
   @exit_station = station.name
   @exit_zone = station.zone
 end


 def fare
  if @entry_station == nil || @exit_station == nil
  PENALTY
  else
    MIN_FARE

 end
end












end