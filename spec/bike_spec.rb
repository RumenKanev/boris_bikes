require_relative '../lib/bike.rb'

describe Bike do
    it "expects working?" do
        bike = Bike.new
        expect(bike.working).to eq true
    
    end
end