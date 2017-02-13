require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Agent'

class AgentTest < MiniTest::Test

  def setup
    @agent = Agent.new("james", "bond")
  end

  def test_can_shay_name
    assert_equal("The name's Bond, James Bond.", @agent.talk)
  end

end