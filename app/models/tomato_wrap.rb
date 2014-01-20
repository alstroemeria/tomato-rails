require 'rubygems'
require 'httparty'
class TomatoWrap	
	include HTTParty
	base_uri "http://api.rottentomatoes.com/api"

	def self.retrieve
		sequence = get("/public/v1.0/lists/movies/box_office.json?limit=16&country=us&apikey=np8w2uaddk2bjan3b6fncefh")
		movies = JSON.parse(sequence)["movies"]

	end
end

