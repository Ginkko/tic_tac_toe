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
      test_space = Space.new({ :x => 1, :y => 2 })
      expect(test_space.x_coord()).to(eq(1))
    end
  end

end
