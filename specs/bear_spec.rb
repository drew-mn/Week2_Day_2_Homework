require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Carp")
    @river1 = River.new("Nile")
  end

  def test_bear_name()
    assert_equal("Yogi", @bear.bear_name)
  end

  def test_bear_has_empty_stomach
    assert_equal([], @bear.bear_stomach)
  end

  def test_bear_stomach_contents
    assert_equal(0, @bear.bear_stomach_contents)
  end
  
  def test_bear_eats_fish()
    @bear.bear_eats_fish(@river)
    assert_equal(1, @bear.bear_stomach.length)
  end

  def test_bear_can_roar
    assert_equal("Rooooooooaaaaaaar", @bear.bear_can_roar)
  end

end
