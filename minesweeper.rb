require_relative "board"
require_relative "tile"
require "byebug"

class Game

  attr_accessor :board

  def initialize(board = Board.random)
    @board = board
  end

end

board[pos]
