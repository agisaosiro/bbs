class Stop_watch
  def initialize
    @start_time = 0
    @stop_time = 0
  end

  def start
    @start_time = Time.now
  end

  def stop
    @stop_time = Time.now
  end

  def show
    p "経過時間: #{@start_time - @stop_time} sec"
  end
end