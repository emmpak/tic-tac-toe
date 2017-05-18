class Field
  attr_reader :value
  
  def claim(mark)
    self.value = mark
  end

  def claimed?
    !!value
  end

  private
  attr_writer :value

end
