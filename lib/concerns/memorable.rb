module Memorable
  module ClassMethods
    def reset_all # to extend
      self.all.clear
    end

    def count # to extend
      self.all.count
    end
  end
  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end
