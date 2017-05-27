# show information about the Board: the display,
# what ships remain, where the ships are, check user_input
class Board

  attr_accessor :grid

  def initialize
    @grid = grid
  end


  # print the board, mark any spaces that have
  # been fired upon
  def display

  end

  # return the number of of valid
  # targets (ships) remaining
  def count
  end

  # randomly fill the grid with ships
  def populate_grid
  end

  # check that the user input is in range
  def in_range?(pos)
  end

end
