module Memorable

  def self.reset_all # to extend
    self.all.clear
  end

  def self.count # to extend
    self.all.count
  end
end
