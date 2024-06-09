# frozen_string_literal: true

require_relative "pieces/rook"
require_relative "pieces/knight"
require_relative "pieces/bishop"
require_relative "pieces/queen"
require_relative "pieces/king"
require_relative "pieces/pawn"

require_relative "board"
require_relative "move"

class Game
  attr_reader :turn, :turn_count

  def initialize
    @turn = :white
    @board = Board.new(current_position)
    
    # @move = Move.new(@turn)
  end

  def current_position
    self.default_position
  end

  private

  def default_position
    [
      [Rook.new(:black), Knight.new(:black), Bishop.new(:black), Queen.new(:black), King.new(:black), Bishop.new(:black), Knight.new(:black), Rook.new(:black)],
      Array.new(8, Pawn.new(:black)),
      Array.new(8),
      Array.new(8),
      Array.new(8),
      Array.new(8),
      Array.new(8, Pawn.new(:white)),
      [Rook.new(:white), Knight.new(:white), Bishop.new(:white), Queen.new(:white), King.new(:white), Bishop.new(:white), Knight.new(:white), Rook.new(:white)],
    ]
  end
end
