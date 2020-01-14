require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

amy = Follower.new("Amy", 32, "Be happy")
bob = Follower.new("Bob", 18, "Enjoy your life")
charlie = Follower.new("Charlie", 40, "Everything is gonna be allright")
dennis = Follower.new("Dennis", 20, "Tomorrow is a new day")

cult1 = Cult.new("Satan's Favorites", "New York", 2008, "NY")
cult2 = Cult.new("Jesus' Best Friends", "Boston", 2008, "LA")
cult3 = Cult.new("Buddha's Buddies", "Chicago", 2010, "NJ")

oath1 = BloodOath.new(cult1, amy)
oath2 = BloodOath.new(cult2, amy)
oath3 = BloodOath.new(cult3, amy)
oath4 = BloodOath.new(cult1, bob)
oath5 = BloodOath.new(cult2, charlie)
oath6 = BloodOath.new(cult3, dennis)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
