require "pry"
require_relative '../app/cult.rb'
require_relative '../app/follower.rb'
require_relative '../app/bloodoath.rb'


freemason = Cult.new("Freemasons", "New York", "Faith, Hope, Charity")
illuminati = Cult.new("Illuminati", "London", "Annuit coeptis")
scientology = Cult.new("Scientology", "Atlanta", "Revenimus")

follower1 = Follower.new("Filip", 22, "Gang Gang Gang")
follower2 = Follower.new("Ramsy", 24, "West side")
follower3 = Follower.new("Alex", 19, "Gang")
follower4 = Follower.new("Jerry", 22, "It is what it is")
follower5 = Follower.new("Shalva", 23, "South side or no side")
follower6 = Follower.new("Mike", 20, "You already know what going on")
follower7 = Follower.new("Miles", 28, "I am with the Gang")
follower8 = Follower.new("Kate", 25, "Girl Gang")


freemason.recruit_follower(follower1)
freemason.recruit_follower(follower3)
freemason.recruit_follower(follower5)
illuminati.recruit_follower(follower2)
illuminati.recruit_follower(follower4)
illuminati.recruit_follower(follower6)
illuminati.recruit_follower(follower7)

follower8.join_cult(scientology)

binding.pry