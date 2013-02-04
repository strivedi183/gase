require_relative 'spec_helper'
require_relative '../stock'

describe Stock do
  let(:stock) {Stock.new("AAPL", 100)}

  describe ".new" do
    it "creates a new Stock object" do
      expect(stock).to_not eq nil
    end
    it "sets the initial stock price" do
      expect(stock.share_price).to eq YahooFinance::get_quotes(YahooFinance::StandardQuote, stock.name)[stock.name].lastTrade
    end
    it "sets the initial share amount" do
      expect(stock.share_amount).to eq 100
    end
  end

  describe "#name" do
    it "has a name" do
      expect(stock.name).to eq "AAPL"
    end
  end

  describe "#share_price" do
    it "has a share price" do
      expect(stock.share_price).to eq YahooFinance::get_quotes(YahooFinance::StandardQuote, stock.name)[stock.name].lastTrade
    end
  end

  describe "#share_amount" do
    it "had a share amount" do
      expect(stock.share_amount).to eq 100
    end
  end

  describe "#get_share_price" do
    it "gets current share price" do
      stock.get_share_price(stock.name)
      expect(stock.share_price).to eq YahooFinance::get_quotes(YahooFinance::StandardQuote, stock.name)[stock.name].lastTrade
    end
  end

  describe "#get_stock_value" do
    it "gets current stock value" do
      stock.get_stock_value
      expect(stock.get_stock_value).to eq stock.share_amount*YahooFinance::get_quotes(YahooFinance::StandardQuote, stock.name)[stock.name].lastTrade
    end
  end
end