# frozen_string_literal: true

require "colorize"

FIGURES = {
  KING: "K",
  QUEEN: "Q",
  ROOK: "R",
  BISHOP: "B",
  KNIGHT: "N",
  PAWN: ""
}

class Move
  def initialize(player)
    select_piece
    get_move
  end

  private

  def get_move
    @move = gets.chomp

    is_valid_move? ? @move : invalid_move_error
  end

  def is_valid_move?
    @move.match? /^([KQRBN])?[a-h][1-8]$|^(O-O(-O)?)$/
  end

  def invalid_move_error
    puts "Invalid move! Try again".colorize(:red)
    get_move
  end
end
