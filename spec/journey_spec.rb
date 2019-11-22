require 'journey'

describe  Journey do
  

let(:station) {double :station, name: 'Liverpool Station', zone: 1}
let(:station_2) {double :station_2, name: 'Aldgate Station', zone: 2}

  describe '#start'do 
    it 'should have a entry station' do
      subject.start(station)
        expect(subject.entry_station).to eq('Liverpool Station')
      end
    

    it 'should have a entry zone' do 
      subject.start(station)
        expect(subject.entry_zone).to eq(1)
      end
    end

  describe '#finish' do
    it 'should have a finish exit station' do
      subject.finish(station_2)
        expect(subject.exit_station).to eq('Aldgate Station')
      end
    end
end