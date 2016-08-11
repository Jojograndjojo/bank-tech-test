require 'transaction_formatter'

describe Transaction_formatter do
  subject(:transaction_formatter) {described_class.new}
  transaction = {amount: 1, account_balance: 1 }

  before do
    allow(Time).to receive(:now).and_return(5)
  end

  describe '#create' do
    it 'creates a transactional record' do
      expect(transaction_formatter.create(transaction)[0]).to eq (5)
      expect(transaction_formatter.create(transaction)[1]).to eq (1)
      expect(transaction_formatter.create(transaction)[2]).to eq (0)
      expect(transaction_formatter.create(transaction)[3]).to eq (1)
    end
  end

end
