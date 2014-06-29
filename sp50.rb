require './mistock.rb'

class SP50

  def initialize()
    @pfolio = Array.new
    (1..50).each { |s| @pfolio << MiStock.new("SP#{s}")  }
  end
  
  def pfolio
    @pfolio
  end
end

begin
  
  s = SP50.new
  s.pfolio.each { |s| puts "#{s}" }
end
