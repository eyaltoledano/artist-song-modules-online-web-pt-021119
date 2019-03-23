require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name) # to extend
    @@songs.detect{|a| a.name == name}
  end

  def self.all # to extend
    @@songs
  end

  def self.reset_all # to extend
    self.all.clear
  end

  def self.count # to extend
    self.all.count
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param # to include
    name.downcase.gsub(' ', '-')
  end
end
