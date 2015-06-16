require "pry"
require_relative "concerns/memorable"
require_relative "concerns/findable"
require_relative "concerns/paramable"

class Artist
  attr_accessor :name
  attr_reader :songs
  @@artists = []
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  def initialize
    @@artists << self
    super
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

end
