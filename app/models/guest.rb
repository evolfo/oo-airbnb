class Guest

	@@all = []

	attr_reader :name

	def initialize(name)
		@name = name

		@@all << self
	end

	def self.all
		@@all
	end

	def trips
		Trip.all.select do |trip|
			trip.guest == self
		end
	end

	def listings
		trips.map do |trip|
			trip.listing
		end
	end

	def self.find_all_by_name(guest_name)
		self.all.select do |guest|
			guest.name == guest_name
		end
	end

	def self.pro_traveler
		self.all.select do |guest|
			guest.trips.length > 1
		end
	end
end
