class Field

  def claim(mark)
    self.value = mark
  end

  def claimed?
    !!value
  end

  private
  attr_accessor :value

end
