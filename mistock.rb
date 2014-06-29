class MiStock

  attr_accessor :symbol
  attr_accessor :cost
  attr_accessor :purchased
  attr_accessor :price
  attr_accessor :num_shares
  
  def initialize(symbol, purchase_cost =nil, purchase_date = nil, number_shares = 0, current_price = nil)
    @symbol = symbol
    @cost = purchase_cost
    @purchased = purchase_date 
    @price = current_price
    @num_shares = number_shares
  end
  
  def to_s
    "#{@symbol} purchased #{@num_shares} shares for $#{@cost} on #{@purchased}, current price $#{@price}"
  end
end

