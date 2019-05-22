class Trip

    # these readers return the listing and guest objects, respectively
    attr_reader :listing, :guest
    
    @@all_trips = []
    
    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@all_trips << self
    end


    # returns an array of all trips
    def self.all
        @@all_trips
    end

end
