require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def self.find_by_name(name) # to extend
    @@artists.detect{|a| a.name == name}
  end

  def self.all # to extend
    @@artists
  end

  # def self.reset_all # to extend
  #   self.all.clear
  # end
  #
  # def self.count # to extend
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param # to include
    name.downcase.gsub(' ', '-')
  end
end
