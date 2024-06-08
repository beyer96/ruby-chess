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
    @move

    print "#{player}'s turn: "
    self.get_move

    until self.is_valid_move? do
      self.invalid_move_error
      self.get_move
    end

    puts @move
  end

  private

  def get_move
    @move = gets.chomp
  end

  def is_valid_move?
    @move.match? /^([KQRBN])?([a-h])([1-8])/
  end

  def invalid_move_error
    puts "Invalid move! Try again".colorize(:red)
  end
end
