require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

herbalife = Cult.new("Herbalife", "Everywhere", 1990, "Buy our products") #(name, location, founding_year, slogan, minimum_age = 0)
starbucks = Cult.new("Starbucks Coffee", "Seattle", 2134, "We Misspell your name")
newmornings = Cult.new("New Mornings Roastery", "Seattle", 2003, "Independently Owned", 20)

adam = Follower.new("Adam", 26, "Do it") #name, age, life_motto
tom = Follower.new("Tom", 32, "Tom & Jerry")
jerry = Follower.new("Jerry", 31, "Derp")
herb = Follower.new("Herb", 28, "Got Herb?")
sally = Follower.new("Sally", 24, "About Average Age")
sandy = Follower.new("Sandy", 12, "I'm 12")

bond = BloodOath.new("today", herbalife, adam) #initiation_date, cult, follower
bond = BloodOath.new("today", starbucks, adam)
bond = BloodOath.new("today", herbalife, tom)
bond = BloodOath.new("today", herbalife, jerry)
bond = BloodOath.new("today", starbucks, sandy)
bond = BloodOath.new("today", newmornings, sally)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
