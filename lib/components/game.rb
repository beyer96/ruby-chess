# frozen_string_literal: true

require_relative "board"

class Game
  attr_reader :turn, :turn_count

  def initialize
    @turn = "White"
    @board = Board.new(current_position)
  end

  def current_position
    self.default_position
  end

  def default_position
    [
      [:black_rook, :black_knight, :black_bishop, :black_queen, :black_king, :black_bishop, :black_knight, :black_rook],
      Array.new(8, :black_pawn),
      Array.new(8),
      Array.new(8),
      Array.new(8),
      Array.new(8),
      Array.new(8, :white_pawn),
      [:white_rook, :white_knight, :white_bishop, :white_queen, :white_king, :white_bishop, :white_knight, :white_rook],
    ]
  end
end
