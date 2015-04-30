class Game
attr_reader(:turn_count, :game_over,)
  @@game = []

  def initialize
    @player_1 = Player.new(mark: 'X', active: true)
    @player_2 = Player.new(mark: 'O', active: true)
    @current_board = Board.new()
    @game_over = false
    @turn_count = 1
    @@game = []
    @@game.push(@player_1)
    @@game.push(@player_2)
    @@game.push(@current_board)
  end

  def self.all
    @@game
  end

  def next_turn
    @game_over = true if @turn_count < 9
    @turn_count += 1
  end

end
