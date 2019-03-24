module Paramable
  def to_param # to include
    name.downcase.gsub(' ', '-')
  end
end
