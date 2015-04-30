class Game
attr_reader(:turn_count)
  @@game = []

  def initialize
    @turn_count = 1
    @@game = []
    @@game.push(Player.new(mark: 'X'))
    @@game.push(Player.new(mark: 'O'))
    @@game.push(Board.new())
  end

  def self.all
    @@game
  end

  def next_turn
    @turn_count += 1

  end
end
