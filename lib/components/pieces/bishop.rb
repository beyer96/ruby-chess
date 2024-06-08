# frozen_string_literal: true

require "colorize"

class Bishop
  def initialize(color)
    @color = color
  end

  def render
    piece = @color == :white ? "♗" : "♝"
    piece.colorize(@color)
  end
end