require 'pry'
require_relative 'data'

client_list = {}

puts "Please choose what you want to do: "
puts "1 = Add a client"
puts "2 = Add a portfolio"
puts "3 = Buy a stock"
puts "4 = Sell a stock"
puts "5 = View portfolios"
puts "6 = View stocks"

response = gets.chomp

if response == 1

binding.pry