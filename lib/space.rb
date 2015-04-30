class Space
  attr_reader(:x_coord, :y_coord, :state)

  def initialize(coords)
    @x_coord = coords.fetch(:x_coord)
    @y_coord = coords.fetch(:y_coord)
    @state = coords.fetch(:state)
  end

  def mark_by(player)
binding.pry
    @state = player.mark()

  end

end
