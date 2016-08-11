class Printer

  def print_statement(accountant)
    print "date || credit || debit || balance \n"

    accountant.record.each do |transaction|
        print "#{transaction[0]} || #{transaction[1]}|| #{transcation[2]}|| #{transaction[3]} \n"
    end
  end
end
