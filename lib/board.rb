class Board
  @@board = []
  attr_reader(:board)

def initialize
  @@board = []
  x = 0
  y = 0
  3.times do
    x += 1
    y = 0
    3.times do
      y += 1
      @@board.push(Space.new(x_coord: x, y_coord: y, state: nil))
    end
  end

  def self.all
    @@board
  end
end

end
