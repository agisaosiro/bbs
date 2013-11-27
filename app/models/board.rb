class Board < ActiveRecord::Base
  attr_accessible :user_id, :content
  belongs_to :user

  class << self
    def conf(para)
      if para == 1
        return 1
      else
        return 0
      end
    end

    def get_all
      return Board.all
    end

    def method_test_true(t=true)
      if t
        return true
      else
        return false
      end
    end

    def array_plusequal
      array = []
      array += [0] * 2
      array += [1] * 5
      array += [2] * 3
      return array
    end

  end

end