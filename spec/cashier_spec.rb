require 'cashier'

describe Cashier do
  subject(:cashier) {described_class.new}

  describe '#deposit' do
    it 'can deposit money' do
      expect(cashier).to respond_to(:deposit).with(2).argument
    end
  end

  describe '#withdraw' do
    it 'can withdraw money' do
      expect(cashier).to respond_to(:withdraw).with(2).argument
    end
  end
end
