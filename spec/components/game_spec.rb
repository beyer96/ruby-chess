# frozen_string_literal: true

require "spec_helper"
require "./lib/components/game"


describe "game" do
  it "should create instance of new game" do
    game = Game.new

    expect(game.turn).to eql("White")
  end
end
