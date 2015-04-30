class Player

  attr_reader(:mark)

  def initialize(mark)
    @mark = mark.fetch(:mark)
  end

end
