require './mistock.rb'

class SP50

  attr_accessor :pfolio

  def initialize()
    @pfolio = Array.new
    # make the cost vary 1..50, the num shares is 100
    (1..50).each { |s| @pfolio << MiStock.new("SP#{s}", s,100, Time.now.strftime("%m-%d"), s)  }
  end

  def total_value
    @pfolio.reduce(0){|sum, holding| sum += (holding.price * holding.num_shares)}
  end
  
  def target_value
    self.total_value/@pfolio.size
  end
  
end

begin
  
  s = SP50.new
  puts s.total_value
  puts s.target_value

end
