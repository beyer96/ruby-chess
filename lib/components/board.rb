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
    print "   "
    ("A".."H").each do |l|
      print " #{l} "
    end
    print "   "
    print "\n"
    (1..8).each do |n|
      background = n.odd? ? :grey : :white
      print " #{n} "
      ("a".."h").each do
        print "   ".colorize(background:)
        background = background == :grey ? :white : :grey
      end
      print " #{n} "
      print "\n"
    end
    print "   "
    ("A".."H").each do |l|
      print " #{l} "
    end
    print "   "
    print "\n"
  end
end

Board.new
