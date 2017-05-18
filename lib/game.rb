class Game
  attr_reader :fields

  def initialize(field_class)
    @fields = []
    create_fields(field_class)
  end

  def play(row, column, player)
    field = fields[row][column]
    field.claim(player) if field.empty?
  end

  def finished?
    complete_row?
  end

  private

  def create_fields(field_class)
    3.times do
      row = []
      3.times { row << field_class.new }
      fields << row
    end
  end

  def complete_row?
    fields.each.inject(:concat).map { |field| field.value }.each_slice(3).any? { |slice| slice.join == 'XXX' }
  end
end
