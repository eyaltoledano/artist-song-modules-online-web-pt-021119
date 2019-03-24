module Findable
  def find_by_name(name) # to extend
    self.all.detect{|a| a.name == name}
  end
end
