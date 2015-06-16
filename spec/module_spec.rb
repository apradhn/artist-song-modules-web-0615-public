require "pry"
require_relative './spec_helper'
require_relative "../lib/artist.rb"
require_relative "../lib/song.rb"

require "set"

RSpec.shared_examples "a class" do 
  let(:objects) { described_class.new}
  context "Class is instantiated" do 
    it "Artist class initializes with an empty songs array" do
      
    end
  end

end