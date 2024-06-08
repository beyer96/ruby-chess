# frozen_string_literal: true

require "colorize"

class Board
  def initialize
    self.generate_board
  end

  def render

  end

  private

  def generate_board
    self.generate_files_legend
    (1..8).each do |n|
      background = n.odd? ? :grey : :white
      print " #{n} " # rank legend left
      ("a".."h").each do
        print "   ".colorize(background:)
        background = background == :grey ? :white : :grey
      end
      print " #{n} " # rank legend right
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
