class River

  attr_reader :river_name, :fish_name

  def initialize(river_name)
    @river_name = river_name
    @fish_name = []
  end

# fish count
  def fish_amount
    @fish_name.count()
  end

  def add_fish_to_river(fish)
    @fish_name.push(fish)
  end

  def remove_fish_from_river(fish)
    @river_name.delete(fish)
  end
not running...
  # def update_fish_content_of_river(fish)
  #   # @river_name.delete(fish)
  #   @river_name.slice!(fish)
# end
end
