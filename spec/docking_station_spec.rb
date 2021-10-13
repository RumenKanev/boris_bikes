require_relative '../lib/docking_station.rb'

describe DockingStation do

    it 'returns empty'do
    
      docking_station = DockingStation.new 
  
      expect(docking_station.release_bike).to eq true
    end

    it 'dockins my bike at the docking station'do
    
      docking_station = DockingStation.new 
  
      expect(docking_station.docked).to eq true
    end


end