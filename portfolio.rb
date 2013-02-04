require_relative 'stock'

class Portfolio
  attr_accessor :name, :portfolio, :portfolio_value
  def initialize(name)
    @name = name
    @portfolio = {}
    @portfolio_value = 0
  end
  def add_stock(stock_name, share_number)
    if @portfolio.key?(stock_name)
        @portfolio[stock_name].share_amount = @portfolio[stock_name].share_amount + share_number
    else
      @portfolio[stock_name] = Stock.new(stock_name, share_number)
    end
  end
  def remove_stock(stock_name, share_number)
    if @portfolio.key?(stock_name)
      if @portfolio[stock_name].share_amount > share_number
        @portfolio[stock_name] = @portfolio[stock_name].share_amount - share_number
      elsif @portfolio[stock_name].share_amount == share_number
        @portfolio.delete(stock_name)
        @portfolio
      else
        puts "You do not own enough shares of #{stock_name}"
      end
    else
     puts "You do not own #{stock_name}!"
    end
  end
  def get_portfolio_value
    @portfolio.each do |key, value|
      @portfolio_value = @portfolio_value + value.get_stock_value.to_f
    end
  end
  def to_s
    "#{@name} contains #{@portfolio.keys.join(", ")}"
  end
end