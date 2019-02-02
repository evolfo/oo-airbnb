require_relative '../config/environment.rb'
require "pry"

def reload
  load 'config/environment.rb'
end





# Put your variables here~!
sanfran = Listing.new("San Francisco")
nyc = Listing.new("NYC")
nyc2 = Listing.new("NYC")
boston = Listing.new("Boston")
angelo = Guest.new("Angelo")
vyse = Guest.new("Vyse")
charles = Guest.new("Charles")
trip1 = Trip.new(angelo, sanfran, "2 weeks")
trip2 = Trip.new(vyse, nyc, "3 days")
trip3 = Trip.new(charles, boston, "1 year")
trip3 = Trip.new(angelo, boston, "2 years")
trip3 = Trip.new(vyse, boston, "3 years")
trip4 = Trip.new(angelo, nyc, "2 minutes")

binding.pry
