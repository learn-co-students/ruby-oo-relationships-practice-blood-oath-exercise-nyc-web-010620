require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

amy = Follower.new("Amy",48,"why not")
bob = Follower.new("Bob",22,"unknown unknowns")
charlie = Follower.new("Charlie",34,"spaghetti is god")
dennis = Follower.new("Dennis",52,"carbs are the devil but in a good way")

cult_names = ["Satan's Favorites","Jesus' Best Friends","Buddha's Buddies"]
cult_locations = ['NYC','SF','Montana']
cult_founding = [1979,1897,2002]
cult_slogan = ["You're on Satan's naughty list'", "Jesus Drank Wine", "Suffering is for losers"]

cult1 = Cult.new(cult_names[0],cult_locations[0],cult_founding[0],cult_slogan[0])
cult2 = Cult.new(cult_names[1],cult_locations[1],cult_founding[1],cult_slogan[1])
cult3 = Cult.new(cult_names[2],cult_locations[2],cult_founding[2],cult_slogan[2])



oath1 = BloodOath.new(cult1,amy,'2019-04-01')
oath2 = BloodOath.new(cult2,amy,'2018-09-06')
oath3 = BloodOath.new(cult3,amy,'2017-05-05')
oath4 = BloodOath.new(cult1,bob,'2019-07-03')
oath5 = BloodOath.new(cult2,charlie,'2018-04-04')
oath6 = BloodOath.new(cult3,dennis,'2019-12-12')


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits