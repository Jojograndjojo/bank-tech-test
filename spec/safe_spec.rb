require 'safe'

describe Safe do
  subject(:safe) {described_class.new}

  describe '#balance' do
    it 'has a initial balance of zero' do
      expect(safe.balance).to eq(0)
    end
  end

  describe '#transfer_funds' do
    it 'increases the existing balance' do
      safe.transfer_funds(1)
      expect(safe.balance).to eq(1)
    end

    it 'decreases the existing balance' do
      safe.transfer_funds(-1)
      expect(safe.balance).to eq(-1)
    end
  end

end
