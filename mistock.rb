class MiStock

  attr_accessor :symbol
  attr_accessor :cost
  attr_accessor :purchased
  attr_accessor :price
  
  def initialize(symbol, purchase_cost =nil, purchase_date = nil, current_price = nil)
    @symbol = symbol
    @cost = purchase_cost
    @purchased = purchase_date 
    @price = current_price
  end
  
  def to_s
    "#{@symbol} purchased for $#{@cost} on #{@purchased}, current price $#{@price}"
  end
end

