class Trip

    @@all_trips = []
    attr_reader :listing, :guest

    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@all_trips << self
    end

    def self.all
        @@all_trips
    end

end
