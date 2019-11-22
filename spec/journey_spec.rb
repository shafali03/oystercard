require 'journey'

describe  Journey do
  

let(:station) {double :station, name: 'Liverpool Station', zone: 1}
let(:station_2) {double :station_2, name: 'Aldgate Station', zone: 2}

  describe '#start'do 
  before do
    subject.start(station)
  end
    it 'should have a entry station' do
        expect(subject.entry_station).to eq('Liverpool Station')
      end
    

    it 'should have a entry zone' do 
        expect(subject.entry_zone).to eq(1)
      end
    end


  describe '#finish' do
  before do
    subject.finish(station_2)
  end
    it 'should have a finish exit station' do
        expect(subject.exit_station).to eq('Aldgate Station')
      end
    

    it 'should ahve a finish exit zone' do
        expect(subject.exit_zone).to eq(2)
    end
  end

  describe '#fare' do  
  before do
    subject.start(station)

  end
    it 'should return minimum fare if the journey is complete' do
      subject.finish(station_2)
      expect(subject.fare).to eq(Journey::MIN_FARE)
    end

    it 'should return penalty if start journey is not complete' do 
      expect(subject.fare).to eq(Journey::PENALTY)
    end
  end









end




