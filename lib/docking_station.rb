require_relative 'bike.rb'

class DockingStation 

     attr_reader  :capacity, :docked_bikes

    def initialize (bike_from_bike = Bike.new)
        @docked_bikes = [bike_from_bike]
        # @release_bike = bike_from_bike.working
        @capacity = 20
    end

    def empty_docking_station
        @docked_bikes = []
    end

    def release_bike
        if @docked_bikes.empty?
            raise "No Bike"
        else  
            @docked_bikes.last.working
        end 
    end 

    def dock_bike(bike) 
        raise "CapacityReached" if @docked_bikes.length == @capacity
        @docked_bikes << bike
    end

end
