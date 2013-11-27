class User < ActiveRecord::Base
  attr_accessible :name
  has_many :board

  class << self
    # bit演算用のクラス
    class Bit
      attr_reader :bit
      def initialize
        @bit = 0
        p "Class Bit => @bit="+@bit.to_s
      end

      # 符号反転
      def turn_over
        @bit = !@bit + 1
      end

      # トグル
      # このままだと01でしかトグルしないのでは？
      def toggle
        time = StopWatch.new
        time.start
        @bit ^= 1
        time.end
        time.show
      end
    end

    def bit_init
      Bit.new
    end

    def hoge(deck_type)
      if deck_type == 1
        return 1
      else
        return 0
      end
    end
  end

  def hoge222
    return 2
  end

end
