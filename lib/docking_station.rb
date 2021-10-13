require_relative 'bike.rb'

class DockingStation 

     attr_reader  :docked, :docking

    def initialize (bike_from_bike = Bike.new)
        @docking = bike_from_bike
        # @release_bike = bike_from_bike.working
        @docked = true
    end

    def empty_docking_station
        @docked = false
    end

    def release_bike
        @docking.working
        if @docked == false
            raise "No Bike"
        else  
            @docking.working
        end 
    end 

    def dock_bike(bike) 
        raise "CapacityReached" if @docked == true
    end

end
