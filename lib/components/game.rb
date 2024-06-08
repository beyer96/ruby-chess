# frozen_string_literal: true

require "./lib/components/board"

class Game
  attr_reader :turn, :turn_count

  def initialize
    @turn = "White"
    @board = Board.new
  end


end
