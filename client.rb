require_relative 'portfolio'

class Client
  attr_accessor :name, :cash_balance, :stock_portfolios
  def initialize(name, cash_balance)
    @name = name
    @cash_balance = cash_balance.to_f
    @stock_portfolios = {}
  end
  def add_portfolio
  end
  def get_stock_portfolios_value
    @stockportfolios.each do |key, value|
      @portfolio_value = @portfolio_value + value.get_stock_value.to_f
    end
  end
  def to_s
    "#{@name} has a cash balance of #{@cash_balance} and has #{@stock_portfolios.key.count}."
  end
end