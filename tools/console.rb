require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("Shu")
guest2 = Guest.new("Natany")
guest3 = Guest.new("Gian")

listing1 = Listing.new("Potomac")
listing2 = Listing.new("Tokyo")
listing3 = Listing.new("Seoul")

trip1 = Trip.new(listing1, guest1)
trip2 = Trip.new(listing2, guest2)
trip3 = Trip.new(listing3, guest3)
trip4 = Trip.new(listing2, guest1)
trip5 = Trip.new(listing3, guest1)
trip6 = Trip.new(listing1, guest2)



Pry.start
0