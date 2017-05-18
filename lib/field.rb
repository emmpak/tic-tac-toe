class Field
  attr_reader :value

  def claim(mark)
    self.value = mark
  end

  def empty?
    !value
  end

  private
  attr_writer :value

end
