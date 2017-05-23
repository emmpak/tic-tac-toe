class Grid

  attr_reader :fields

  def initialize
    @fields = Array.new(3) { Array.new(3, nil) }
  end

  def claim(row, column, player)
    fields[row][column] = player if fields[row][column].nil?
  end

  def complete_row?
    fields.map {|row| row.join }.any? {|row| row =~ /X{3}|O{3}/}
  end

  def complete_column?
    columns = fields.transpose
    columns.map {|row| row.join }.any? {|row| row =~ /X{3}|O{3}/}
  end

  def complete_diagonal?
    p fields.each_with_index.chunk { |x, i| i.join =~ /X{3}/}
    # require 'pry';binding.pry
  end
end
