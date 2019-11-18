require 'oystercard'

describe Oystercard do

  subject(:oystercard) { described_class.new }

  it 'should start with a balance of zero' do
   expect(oystercard.balance).to eq(0)
  end

  describe "#top_up" do

    it "should add £1 to the oystercard" do
      oystercard.top_up(1)
      expect(oystercard.balance).to eq(1)
    end

    it "should add £1 then £2 to the oystercard" do
      oystercard.top_up(1)
      oystercard.top_up(2)
      expect(oystercard.balance).to eq(3)
    end

  end

end
