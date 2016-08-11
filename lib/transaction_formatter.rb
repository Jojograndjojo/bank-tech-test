class Transaction_formatter

  attr_reader :time

  def initialize
    @time = Time.now
  end

  def create(transaction= {amount: 0, account_balance: 0})
    credit = credit_evaluation(transaction[:amount])
    debit = credit - transaction[:amount]

    [@time,credit,debit,transaction[:account_balance]]
  end

  private

  def credit_evaluation(amount)
    amount >= 0 ? amount : 0
  end

end
