require_relative '../lib/docking_station.rb'

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


end