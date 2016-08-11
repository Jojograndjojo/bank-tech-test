require_relative 'transaction_formatter'

class Accountant
  attr_reader :record

  def initialize(transaction_formatter = Transaction_formatter.new)
    @record = []
    @transaction_formatter = transaction_formatter
  end

  def store(transaction)
    @record << @transaction_formatter.create(transaction)
  end
end
