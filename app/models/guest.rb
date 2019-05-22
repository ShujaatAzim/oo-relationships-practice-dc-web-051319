class Guest

    # this returns the name of each guest instance
    attr_reader :name
    

    @@all_guests = []

    
    def initialize(name)
        @name = name
        @@all_guests << self
    end
    

    # returns an array of all listings a guest has stayed at.
    def listings
        self.trips.collect do |trip|
            trip.listing.city
        end
    end
    # this^ returns an array of JUST the names of the cities. If I 
    # need the actual listing objects instead, I would leave off .city but
    # the default SHOULD be Objects and not just listing city names.


    # returns an array of all the trips this guest instance has taken.
    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end


    # returns the number of trips this guest instance has taken. 
    
    # Self, in this case, refers to the instance. This is obvious, 
    # becuase this is an instance method! Plus, we basically get to skip 
    # a step -- we have already filtered Trip.all above, so we just call 
    # that method to do it again, rather than re-type it all. Then we take 
    # the new result and filter one step futher (or in this case, 
    # we just count, but other times we look for an attribute in them).
    def trip_count
        self.trips.count
    end



    # returns an array of all the guest objects instansiated.
    def self.all
        @@all_guests
    end

    # returns an array of Guest objects that have been on more than one
    # trip. Can be modified to return JUST the geust names? Maybe...
    def self.pro_traveller
       Guest.all.select do |guest|
            guest.trip_count > 1
        end
    end

    # returns the guest instances that share the name of the name passed in
    def self.find_all_by_name(name)
        Guest.all.select do |guest|
            guest.name == name
        end
    end


end

