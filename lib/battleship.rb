require_relative "board"
require_relative "player"

# control game mechanics and rules: play turns,
# execute turns, show the game status
class BattleshipGame
  attr_reader :board, :player

  def initialize(player = HumanPlayer.new("Jeff"), board = Board.random)
    @player = player
    @board = board
    @hit = false
  end

  # def initialize(player = HumanPlayer.new("Yoyo"), board = Board.new)
  #   @board = board
  #   @player = player
  # end

  def play
  end

  def play_turn
  end

  # pos will be an array like so [1, 1]
  def attack(pos)
    row = pos[0]
    column = pos[1]

    @board[row][column] = :x
  end

  def display_status
  end

end
