require 'board'
require 'player'

# control game mechanics and rules: play turns,
# execute turns, show the game status
class BattleshipGame
  attr_reader :board, :player

  def play
  end

  def play_turn
  end

  def attack(pos)
  end

  def display_status
  end

end
