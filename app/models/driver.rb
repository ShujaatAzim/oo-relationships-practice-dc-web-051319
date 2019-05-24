class Driver

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    # returns an array of all driver Objects
    def self.all
        @@all
    end

    # returns all rides a driver has made
    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    # returns all passengers a driver has had
    def passengers
        self.rides.collect do |ride|
            ride.passenger
        end
    end

    # this is a helper method, it wasn't asked for in the readme. But, we
    # know we need one because the milage cap method that follows will make
    # use of the result. This one returns the sum of a driver's distances,
    # and the next one finds the driver with the longest (biggest sum).
    def total_distance_by_driver
        self.rides.collect do |ride|
            ride.distance
        end.sum
    end

    # ^this and the following one need self because they need that particular
    # instance's (driver's) distance! Can only "filter" down to one level, 
    # so need another method if needing to go down one more.

    
    
    # takes an argument of a distance (float) and returns all drivers who have 
    # exceeded that mileage

    def self.mileage_cap(distance)
        self.all.select do |driver|
            driver.total_distance_by_driver > distance
        end
    end


end
