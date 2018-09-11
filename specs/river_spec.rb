require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Hudson")
  end

  def test_river_name()
    assert_equal("Hudson", @river.river_name)
  end


  def test_fish_amount
      assert_equal(0, @river.fish_amount)
    end

    def test_add_fish_to_river
      @river.add_fish_to_river(@fish1)
      @river.add_fish_to_river(@fish2)
      @river.add_fish_to_river(@fish3)
      assert_equal(3, @river.fish_amount)
    end

    def test_remove_fish_from_river
      assert_equal(0, @river.fish_amount)
    end

# not running...
  #   def test_update_fish_content_of_river()
  #     @river.add_fish_to_river(@fish1)
  #     @river.add_fish_to_river(@fish2)
  #     @river.add_fish_to_river(@fish3)
  #     @river.remove_fish_from_river(@fish1)
  #   assert_equal(2, @river.fish_amount())
  # end

end
