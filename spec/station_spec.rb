require 'station'
describe Station do 
  subject(:station) {Station.new('Baker St', 1)}

  describe do
    it 'knows its station' do
      expect(station.name).to eq('Baker St')
    end
  end

  describe do
    it 'knows its zone' do
      expect(station.zone).to eq(1)
    end
  end
end


























# require 'station'

# describe Station do

#   station {describe_class.new(name: "Baker Street", zone: 1 )}
#     it "know what zone" do
#       expect(station.name).to eq("Baker Street")
#     end
#     it "know what zone" do 
#       expect(station.zone).to eq(1)
#   end
# end