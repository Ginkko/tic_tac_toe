require 'rspec'
require 'pry'
require 'board'
require 'game'
require 'player'
require 'space'

describe(Player) do

  describe("#mark") do
    it("returns the player's mark") do
      test_player = Player.new({ :mark => "X" })
      expect(test_player.mark()).to(eq("X"))
    end
  end

end

describe(Space) do
  describe("#x_coordinate") do
    it("returns the space's x_coordinate") do
      test_space = Space.new({ x_coord: 1, y_coord: 2, state: nil })
      expect(test_space.x_coord()).to(eq(1))
    end
  end

  describe("#mark_by") do
    it('let a player change the state of a space') do
      test_player = Player.new(mark: "X")
      test_space = Space.new(x_coord: 1, y_coord: 2, state: nil)
      test_space.mark_by(test_player)
      expect(test_space.state()).to(eq("X"))
    end
  end
end

describe(Board) do
  describe('initialize') do
    it('creates 9 spaces when it is initialized') do
      test_board = Board.new()
      expect(Board.all[8].y_coord()).to(eq(3))
      end
    end
  end

describe(Game) do
  describe('initialize') do
    it('creates two players and a board.') do
      test_game = Game.new()
      test_player1 = Player.new(mark: 'X')
      test_player2 = Player.new(mark: 'O')
      test_board = Board.new()
      expect(Game.all[0].mark()).to(eq('X'))
    end
  end

  describe('#next_turn') do
    it('increments the turn counter by 1') do
      test_game = Game.new()
      test_game.next_turn()
      expect(test_game.turn_count()).to(eq(2))
    end

    it('checks to see if 9 moves have been completed') do
    end

    it('checks for a winner at turn 6 and up') do
    end

  end

end
