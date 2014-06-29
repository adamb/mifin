require './mistock.rb'

class SP50

  attr_accessor :pfolio

  def initialize()
    @pfolio = Array.new
    # make the cost vary 1..50, the num shares is 100
    (1..50).each { |s| @pfolio << MiStock.new("SP#{s}", s,100, Time.now.strftime("%m-%d"), s)  }
  end
  
end

begin
  
  s = SP50.new
  s.pfolio.each { |s| puts "#{s}" }

end
