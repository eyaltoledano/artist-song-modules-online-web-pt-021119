module Findable
  def find_by_name(name) # to extend
    @@songs.detect{|a| a.name == name}
  end
end
