class Grid

  attr_reader :values

  def initialize
    @values = Array.new(3, Array.new(3, nil))
  end
end
