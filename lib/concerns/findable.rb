module Findable
  module ClassMethods
    def self.find_by_name(name) # to extend
      @@songs.detect{|a| a.name == name}
    end
  end
  module InstanceMethods
  end
end
