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

    it "should throw an exception if the new balance would exceed the limit" do
      maximum_balance = Oystercard::MAX_BALANCE
      oystercard.top_up(maximum_balance)
      message = "Exceeded maximum balance of £#{maximum_balance}"
      expect { oystercard.top_up(1) }.to raise_error { message }
    end
  end

  describe "#deduct" do
    it "should reduce the balance by specified amount" do
      oystercard.top_up(10)
      oystercard.deduct(3)
      expect(oystercard.balance).to eq(7)
    end

    it "should raise an error when balance is insufficient" do
      expect { oystercard.deduct(1) }.to raise_error { "Insufficient balance, please top up" }
    end

  end

  describe "#in_journey?" do

    it "should return false before touching in" do
      expect(oystercard.in_journey?).to eq false
    end

  end

  describe "#touch_in" do

    it "should change the state of the card on journey" do
      oystercard.touch_in
      expect(oystercard.in_journey?).to eq true
    end

  end

  describe "#touch_out" do

    it "should change the state of the card on journey end" do
      oystercard.touch_in
      oystercard.touch_out
      expect(oystercard.in_journey?).to eq false
    end

  end

end
