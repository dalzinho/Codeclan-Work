require 'minitest/autorun'
require 'minitest/rg'

require_relative('../BankAccount.rb')

class TestBankAccount < MiniTest::Test

  def test_account_name

    account = BankAccount.new("John", 1_000_000, "business")
    account_two = BankAccount.new("Frank Zappa", 1_000_000_000, "personal")
    account.account_name = ("Gillian")

    assert_equal("Gillian", account.account_name)
    assert_equal("Frank Zappa", account_two.account_name)
  end

  def test_account_credit
    account = BankAccount.new("John", 1_000, "business")
    account_two = BankAccount.new("Frank Zappa", 1_000_000_000, "personal")
    
    account.pay_in(1_000)
    assert_equal(2_000, account.balance)
  end

  def test_monthly_fee_business_accounts
    account = BankAccount.new("John", 1_000, "business")

    account.pay_monthly_fee()
    

    assert_equal(950, account.balance)
    
  end 

  def test_monthly_fee_personal
    account_two = BankAccount.new("Frank Zappa", 1_000, "personal")

    account_two.pay_monthly_fee

    assert_equal(990, account_two.balance)
  end

end