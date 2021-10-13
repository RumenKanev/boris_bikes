require_relative '../lib/docking_station.rb'
require_relative '../lib/bike.rb'

describe DockingStation do

    it 'returns true'do
      docking_station = DockingStation.new 
      expect(docking_station.release_bike).to eq true
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

    it 'it does not allow us to dock 21' do 
      docking_station = DockingStation.new
      expect{ 20.times{docking_station.dock_bike(Bike.new)} }.to raise_error "CapacityReached"
    end

    it 'allows us to dock 20 bikes' do
      docking_station = DockingStation.new
      expect{ 19.times{docking_station.dock_bike(Bike.new)} }.not_to raise_error
    end

end