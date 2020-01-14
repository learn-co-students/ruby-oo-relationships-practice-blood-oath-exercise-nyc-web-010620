Learn more or give us feedback
require 'pry'

class BloodOath

attr_accessor :cult, :follower, :initialization_date 

@@all = []

    def initialize(cult, follower, initialization_date)
        @cult = cult
        @follower = follower
        @initialization_date = initialization_date
        @@all << self
    end

    def self.all
        @@all
    end

    def initiation_date
        return self.initialization_date
    end
    def self.first_oath
        self.all[0].follower
    end

end
# binding.pry
