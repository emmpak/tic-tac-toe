class Game
  attr_reader :grid

  def initialize(grid)
    @grid = grid
  end

  def play(row, column, player)
    field = fields[row][column]
    field.claim(player) if field.empty?
  end

  def finished?
    complete_row?
  end

  private

  def complete_row?
    fields.each.inject(:concat).map { |field| field.value }.each_slice(3).any? { |slice| slice.join == 'XXX' }
  end
end
