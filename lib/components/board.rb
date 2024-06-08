# frozen_string_literal: true

require "colorize"

require "./lib/components/pieces/rook"
require "./lib/components/pieces/knight"
require "./lib/components/pieces/bishop"
require "./lib/components/pieces/queen"
require "./lib/components/pieces/king"
require "./lib/components/pieces/pawn"

class Board
  PIECES = {
    black_rook: Rook.new(:black),
    black_knight: Knight.new(:black),
    black_bishop: Bishop.new(:black),
    black_queen: Queen.new(:black),
    black_king: King.new(:black),
    black_pawn: Pawn.new(:black),
    white_rook: Rook.new(:white),
    white_knight: Knight.new(:white),
    white_bishop: Bishop.new(:white),
    white_queen: Queen.new(:white),
    white_king: King.new(:white),
    white_pawn: Pawn.new(:white),
  }

  def initialize(position)
    self.generate_board(position)
  end

  def render

  end

  private

  def generate_board(position)
    self.generate_files_legend
    position.each_with_index do |rank, i| # iterates ranks from 8 to 1
      i = i + 1
      background = i.even? ? :light_green : :white
      print " #{9 - i} " # rank legend left
      rank.each do |field|
        field_content = field.nil? ? " " : PIECES[field].render
        print " #{field_content} ".colorize(background:)
        background = background == :light_green ? :white : :light_green
      end
      print " #{9 - i} " # rank legend right
      print "\n"
    end
    self.generate_files_legend
  end

  def generate_files_legend
    print "   "
    ("A".."H").each do |l|
      print " #{l} "
    end
    print "   "
    print "\n"
  end
end
