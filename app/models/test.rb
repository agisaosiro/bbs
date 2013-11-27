class Test < ActiveRecord::Base
  attr_accessible :name
  has_many :board

  class << self
    def hoge(deck_type)
      if deck_type == 1
        return 1
      else
        return 0
      end
    end
  end

end
