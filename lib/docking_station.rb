require_relative 'bike.rb'

class DockingStation 

    attr_reader :release_bike, :docked

    def initialize (bike_from_bike = Bike.new)
        @docking = bike_from_bike
        @release_bike = bike_from_bike.working
        @docked = true
    end




    
end