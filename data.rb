require_relative 'client'

$client = Client.new('Bob', '1000000')

$client.stock_portfolios['Tech Portfolio'] = Portfolio.new('Tech Portfolio')
$client.stock_portfolios['Bank Portfolio'] = Portfolio.new('Bank Portfolio')
$client.stock_portfolios['Energy Portfolio'] = Portfolio.new('Energy Portfolio')

$client.stock_portfolios['Tech Portfolio'].portfolio['AAPL'] = Stock.new('AAPL', 100)
$client.stock_portfolios['Tech Portfolio'].portfolio['GOOG'] = Stock.new('GOOG', 250)
$client.stock_portfolios['Tech Portfolio'].portfolio['AMZN'] = Stock.new('AMZN', 500)
$client.stock_portfolios['Bank Portfolio'].portfolio['USB'] = Stock.new('USB', 100)
$client.stock_portfolios['Bank Portfolio'].portfolio['TD'] = Stock.new('TD', 250)
$client.stock_portfolios['Bank Portfolio'].portfolio['BAC'] = Stock.new('BAC', 500)
$client.stock_portfolios['Energy Portfolio'].portfolio['GE'] = Stock.new('GE', 100)
$client.stock_portfolios['Energy Portfolio'].portfolio['SWI'] = Stock.new('SWI', 250)
$client.stock_portfolios['Energy Portfolio'].portfolio['SCTY'] = Stock.new('SCTY', 500)
