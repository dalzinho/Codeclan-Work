class BankAccount

  attr_accessor :account_name
  attr_reader :balance


  def initialize(name, balance, account_type)

    @account_name = name
    @balance = balance
    @type = account_type

  end

  def pay_in(amount)
    @balance += amount
  end

  def pay_monthly_fee

    if @type == "business"
      @balance -= 50
    elsif @type == "personal"
      @balance -= 10
    end

  end
end