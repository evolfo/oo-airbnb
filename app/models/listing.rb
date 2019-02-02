class Listing
	attr_reader :city

	@@all = []

	def initialize(city)
		@city = city
		@@all << self
	end

	def trips
		Trip.all.select do |trip|
			trip.listing == self
		end
	end

	def guests
		trips.map do |trip|
			trip.guest
		end
	end

	def trip_count
		trips.length
	end

	def self.all
		@@all
	end

	def self.find_all_by_city(city)
		self.all.select do |listing|
			listing.city == city
		end
	end

	def self.most_popular
		final_listing = []
		listing_trip_amount = 0
		self.all.each do |listing|
			if listing_trip_amount < listing.trips.length
				listing_trip_amount = listing.trips.length
				final_listing = listing
			end
		end
		final_listing
		# grouped_listings = self.all.group_by {|listing| listing.city}
		# grouped_listings.values.max_by {|listing| listing.length}
	end
end
