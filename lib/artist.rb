require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  extend Memorable # for class methods
  extend Findable # for class methods
  include Paramable # for instance methods

  def initialize
    @@artists << self
    @songs = []
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

end
