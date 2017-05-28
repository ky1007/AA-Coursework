class Board

  attr_reader :grid

  def initialize(grid = Board.default_grid)
    @grid = grid
  end

  def self.default_grid
    Array.new(10) { Array.new(10) }
  end

  def count
    num_ships = 0

    @grid.each do |row|
      num_ships += row.count(:s)
    end

    num_ships
  end

  def empty?(pos = [])
    row = pos[0]
    column = pos[1]

    return true if pos != [] && @grid[row][column] == nil
    return true if pos == [] && @grid.flatten.all? { |ele| ele == nil }
    false
  end

  def full?
    @grid.flatten.all? { |ele| ele != nil}
  end

  def place_random_ship
    raise "Board is full!" if full?

    rand_row = rand(@grid.length)
    rand_column = rand(@grid.length)

    @grid[rand_row][rand_column] = :s if self.empty?([rand_row, rand_column])
  end

  def won?
    return false if @grid.flatten.count(:s) >= 1
    true
  end

  def [](pos)
    row, column = pos
    @grid[row][column]
  end

  def []=(pos, mark)
    row, column = pos
    @grid[row][column] = mark
  end
end
