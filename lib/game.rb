class Game
attr_reader(:turn_count, :game_over)
  @@game = []

  def initialize
    @game_over = false
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
    if @turn_count < 9
      @turn_count += 1
    else
      @game_over = true
    end
  end

end
