class Grid

  attr_reader :values

  def initialize
    @values = create
  end

  private
    def create
      array = []
      3.times { array << Array.new(3,nil)}
      array
    end
end
