class Space
  attr_reader(:x_coord, :y_coord)

  def initialize(coords)
    x_coord = coords.fetch(:x_word)
    y_coord = coords.fetch(:y_coord)

  end

end
