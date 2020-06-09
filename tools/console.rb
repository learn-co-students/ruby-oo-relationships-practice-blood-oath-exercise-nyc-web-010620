require_relative '../config/environment.rb'
require_relative '../app/cult.rb'
require_relative '../app/follower.rb'
require_relative '../app/bloodoath.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

freemason = Cult.new("Freemasons", "New York", "Faith, Hope, Charity")
illuminati = Cult.new("Illuminati", "London", "Annuit coeptis")




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits