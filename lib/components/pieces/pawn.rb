# frozen_string_literal: true

class Pawn
  def initialize(color)
    color == :white ? "\u2659" : "\u265F"
  end
end
