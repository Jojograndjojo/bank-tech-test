require 'accountant'

describe Accountant do
  subject(:accountant) {described_class.new}
  transaction = {amount: 1, account_balance: 1 }

  describe '#record' do
    it 'has an initial empty record' do
      expect(accountant.record).to eq []
    end
  end

  describe '#store' do
    it 'records a transaction' do
      accountant.store(transaction)
      expect(accountant.record.length).to eq(1)
    end
  end

end
