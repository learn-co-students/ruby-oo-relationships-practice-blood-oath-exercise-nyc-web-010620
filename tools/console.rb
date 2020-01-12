require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

herbalife = Cult.new("Herbalife", "Everywhere", 1990, "Buy our products")#(name, location, founding_year, slogan)
adam = Follower.new("Adam", 26, "Do it")#(name, age, life_motto)
bond = Bloodoath.new("today", herbalife, adam)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
