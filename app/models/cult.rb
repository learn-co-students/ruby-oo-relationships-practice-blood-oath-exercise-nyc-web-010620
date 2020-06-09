class Cult
    attr_accessor :location, :founding_year, :slogan
    attr_reader :name
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        
        @@all << self
    end

    def self.all
        @@all
    end

    def followers
        # my_bloodoaths -> array of blood oaths that have this cult as its assigned cult
        my_bloodoaths = BloodOath.all.select { |oath| oath.cult == self }
        # my_followers -> from the array of oaths, pulls out the follower from each oath
        my_followers = my_bloodoaths.map { |oath| oath.follower }
    end


    def recruit_follower(follower)
        #make new bloodoath to link this cult and the given follower
        BloodOath.new(self,follower)
    end

    def cult_population
        # my_bloodoaths -> array of blood oaths that have this cult as its assigned cult
        my_bloodoaths = BloodOath.all.select { |oath| oath.cult == self }
        my_bloodoaths.size
    end

    def self.find_by_name(name_string)
        # takes in string name_string, returns cult instance whose name matches the name string
        self.all.find { |cult_instance| cult_instance.name == name_string }
    end

    def self.find_by_location(location_string)
        self.all.select { |cult_instance| cult_instance.location == location_string }
    end

    def self.find_by_founding_year(year_int)
        self.all.select { |cult_instance| cult_instance.year == year_int }
    end

end