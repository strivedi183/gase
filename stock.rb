require 'yahoofinance'

class Stock
  attr_accessor :name, :share_price, :share_amount, :stock_value
  def initialize(name, share_amount)
    @name = name
    @share_price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @name)[@name].lastTrade
    @share_amount = share_amount
  end
  def get_share_price(name)
    @share_price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @name)[@name].lastTrade
  end
  def get_stock_value
    @share_price = get_share_price(@name)
    @stock_value = @share_price * @share_amount
  end
  def to_s
    get_share_price(@name)
    get_stock_value
    "You own #{share_amount} shares of #{name} valued at #{stock_value}"
  end
end