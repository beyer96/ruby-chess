# frozen_string_literal: true

require "colorize"

class Knight
  def initialize(color)
    @color = color
  end

  def render
    piece = @color == :white ? "♘" : "♞"
    piece.colorize(@color)
  end
end
