require './mistock.rb'

class SP50

  attr_accessor :pfolio

  def initialize()
    @pfolio = Array.new
    (1..50).each { |s| @pfolio << MiStock.new("SP#{s}")  }
  end
  
end

begin
  
  s = SP50.new
  s.pfolio.each { |s| puts "#{s}" }

end
