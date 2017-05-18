class Game
  attr_reader :fields

  def initialize(field_class)
    @fields = []
    create_fields(field_class)
  end

  private

  def create_fields(field_class)
    3.times do
      row = []
      3.times { row << field_class.new }
      fields << row
    end
  end
end
