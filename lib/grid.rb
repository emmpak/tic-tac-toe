class Grid

  attr_reader :fields

  def initialize
    @fields = Array.new(3) { Array.new(3, nil) }
  end

  def claim(row, column, player)
    fields[row][column] = player if fields[row][column].nil?
  end
end
