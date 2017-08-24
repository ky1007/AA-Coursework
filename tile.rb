require_relative "board"
require_relative "minesweeper"
require "byebug"

class Tile

  attr_accessor :value

  def initialize(value, face_up)
    @value = value
    @face_up = false
  end

  def self.random_value
    
  end

  # def face_up
  #   @face_up = false
  # end
end
