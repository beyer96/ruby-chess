# frozen_string_literal: true

require "colorize"

class Board
  def initialize(position)
    self.generate_board(position)
  end

  private

  def generate_board(position)
    self.generate_files_legend
    position.each_with_index do |rank, i| # iterates ranks from 8 to 1
      i = i + 1
      background = i.even? ? :light_green : :white
      print " #{9 - i} " # rank legend left
      rank.each do |field|
        field_content = has_piece?(field) ? field.render : " "
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

  def has_piece?(field)
    !field.nil?
  end
end
