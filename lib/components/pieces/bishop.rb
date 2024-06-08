# frozen_string_literal: true

class Bishop
  def initialize(color)
    color == :white ? "\u2657" : "\u265D"
  end
end