require_relative 'accountant'
require_relative 'printer'

class Cashier

  def initialize(accountant = Accountant.new, printer = Printer.new)
    @accountant = accountant
    @printer = printer
  end

  def deposit(amount, account)
    account.transfer_funds(amount)
  end

  def withdraw(amount, account)
    account.transfer_funds(-amount)
  end

  def print_statement
    @printer.print_statement(@accountant)
  end

  private

  def transfer_funds(amount, account)
    account.transfer_funds(amount)
    transaction = {amount: amount, account_balance: account.balance }
    @accountant.record(transaction)
  end


end
