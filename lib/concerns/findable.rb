module Findable
  def find_by_name(name) # to extend
    Artist.artists.detect{|a| a.name == name}
  end
end
