# TO DO: Write the specs that ensures our speed_in_mph method
# successfully converts speed from km/h to mi/h.
require './lib/speed_in_mph'

describe "#speed_in_mph" do
    context 'kmh is an integer' do
        it 'should return kmh to mph when an integer is provided' do
            expect(20).to be_kind_of(Integer || Float)
            expect(speed_in_mph(20)).to eq(20 / 1.609)
            expect(speed_in_mph(20)).to be_kind_of(Float)
        end
    end
    context 'kmh is not an integer' do
        it 'should return an error' do
            expect(speed_in_mph('hello world')).to eq('Not an integer')
        end
    end
end