class Game
  def initialize(field_class)
    @fields = []
    create_fields(field_class)
  end

  private
  attr_reader :fields

  def create_fields(field_class)
    12.times { fields << field_class.new }
  end
end
