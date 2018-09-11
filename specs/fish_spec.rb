require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class FishTest < MiniTest::Test
  def setup()
    @fish = Fish.new("Marlin")
  end

  def test_fish_name()
    assert_equal("Marlin", @fish.fish_name)
  end

end
