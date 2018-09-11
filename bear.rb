class Bear

  attr_reader :bear_name, :bear_type, :bear_stomach

  def initialize(bear_name, bear_type)
    @bear_name = bear_name
    @bear_type = bear_type
    @bear_stomach = []
  end

# food count
  def bear_stomach_contents
    return @bear_stomach.count()
  end

def bear_eats_fish(fish)
  @bear_stomach << fish
  return @bear_stomach
end


def bear_can_roar
    return "Rooooooooaaaaaaar"
  end

end
