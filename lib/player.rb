class Player

  attr_reader(:mark, :active)

  def initialize(mark)
    @mark = mark.fetch(:mark)
    @active = mark.fetch(:active)
  end

end
