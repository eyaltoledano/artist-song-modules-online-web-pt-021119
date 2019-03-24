require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end



  def self.all # to extend
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param # to include
    name.downcase.gsub(' ', '-')
  end
end
