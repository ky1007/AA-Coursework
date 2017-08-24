require_relative "tile"
require_relative "minesweeper"
require "byebug"

class Board

  attr_accessor

  def initialize()
    @grid = Array.new(4) { Array.new(4)}
  end

  def self.random
    Board.new()
  end

  def render
    @grid[]
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    grid[row][col] = val
  end

end

p board = Board.new
p board.render
