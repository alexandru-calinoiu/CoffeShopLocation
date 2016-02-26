require 'pp'
require_relative 'find_me_three_coffee_shops'

FindMeThreeCoffeeShops.new(*ARGV).matches.each do |match|
   p match
end