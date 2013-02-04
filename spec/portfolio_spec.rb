require_relative 'spec_helper'
require_relative '../portfolio'

describe Portfolio do
  let(:portfolio) {Portfolio.new("IT Portfolio")}

  describe ".new" do
    it "creates a new Portfolio object" do
      expect(portfolio.name).to_not eq nil
    end
    it "has no stocks in the portfolio" do
      expect(portfolio.portfolio.count).to eq 0
    end
  end

  describe "#name" do
    it "has a name" do
      expect(portfolio.name).to eq "IT Portfolio"
    end
  end

  describe "#portfolio" do
    it "has a portfolio" do
      expect(portfolio.portfolio.count).to eq 0
    end
  end

  describe "#add_stock" do
    it "checks to see if you own that stock" do
      expect(portfolio.portfolio.key?("AAPL")).to eq false
    end
    it "adds a new stock to the portfolio" do
      portfolio.add_stock("AAPL", 100)
      expect(portfolio.portfolio.count).to eq 1
    end
  end

  describe "#remove_stock" do
    it "checks to see if you own that stock" do
      portfolio.add_stock("AAPL", 100)
      expect(portfolio.portfolio.key?("AAPL")).to eq true
    end
    it "checks to see if you own enough of that stock" do
      portfolio.add_stock("AAPL", 100)
      expect(portfolio.portfolio["AAPL"].share_amount).to eq 100
    end
    it "deletes a current stock to the portfolio" do
      portfolio.add_stock("AAPL", 100)
      portfolio.remove_stock("AAPL", 100)
      expect(portfolio.portfolio.count).to eq 0
    end
  end
end