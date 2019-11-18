require 'oystercard'

describe Oystercard do
  subject(:oystercard) { described_class.new }
  it 'should start with a balance of zero' do
   expect(oystercard.balance).to eq(0)
  end
end
