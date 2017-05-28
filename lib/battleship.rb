require_relative "board"
require_relative "player"

# control game mechanics and rules: play turns,
# execute turns, show the game status
class BattleshipGame
  attr_reader :board, :player

  def initialize(player = HumanPlayer.new("Yogo"), board = Board.new)
    @player = player
    @board = board
  end

  def game_over?
    @board.won?
  end

  def play_turn
    user_input = @player.get_play
    attack(user_input)
  end

  # pos will be an array like so [1, 1]
  def attack(pos)
    # row = pos[0]
    # column = pos[1]
    # p @board
    @board[pos] = :x
  end

  def display_status
  end

  def count
    @board.count
  end

end
