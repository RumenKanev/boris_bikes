require_relative '../lib/docking_station.rb'
require_relative '../lib/bike.rb'

describe DockingStation do

    it 'returns true'do
      docking_station = DockingStation.new 
      expect(docking_station.release_bike).to eq true
    end


    it 'docking my bike at the docking station'do 
      docking_station = DockingStation.new 
      expect(docking_station.docked).to eq true
    end

    it 'checks is there a bike' do 
      docking_station = DockingStation.new
      docking_station.empty_docking_station 
      expect { docking_station.release_bike}.to raise_error("No Bike")
    end 

    it 'allows us to dock a bike' do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:dock_bike)
    end

    it 'does not allow us to dock a bike, if there is already one' do 
      bike = Bike.new
      docking_station = DockingStation.new
      expect {docking_station.dock_bike(bike)}.to raise_error("CapacityReached")
    end

end