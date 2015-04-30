class Game
  @@game = []

  def initialize
    @@game = []
    @@game.push(Player.new(mark: 'X'))
    @@game.push(Player.new(mark: 'O'))
    @@game.push(Board.new())
  end

  def self.all
    @@game
  end

end
