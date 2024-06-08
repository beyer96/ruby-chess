# frozen_string_literal: true

class Rook
  def initialize(color)
    color == :white ? "\u2656" : "\u265C"
  end
end