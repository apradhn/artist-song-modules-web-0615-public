require_relative "concerns/memorable"
require_relative "concerns/findable"
require_relative "concerns/paramable"

class Song
  attr_accessor :name
  attr_reader :artist
  @@songs = []
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) if !(artist.songs.include?(self))
  end

  def self.all
    @@songs
  end

end
