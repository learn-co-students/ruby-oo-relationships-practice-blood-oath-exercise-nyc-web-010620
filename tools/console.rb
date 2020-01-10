require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'

end
cult1 = Cult.new("Herbalife","Everywhere","1990","Join Now!")
cult2 = Cult.new("Chain Gange","West Coast","1876","Dont Quit")
cult3 = Cult.new("MLA","Your House","2004","Make 1500 a week")
cult4 = Cult.new("Apple","Cupertino","1976","Think Different")

follower1 = Follower.new("Bob","54","Go for Gold")
follower2 = Follower.new("John","22","If you say so")
follower3 = Follower.new("Mike","5","You're Cool")
follower4 = Follower.new("Sally","31","Live your best life")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
