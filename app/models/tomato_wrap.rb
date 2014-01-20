require 'rubygems'
require 'httparty'
class TomatoWrap	
	include HTTParty
	base_uri "http://api.rottentomatoes.com/api"
	@api_key = "np8w2uaddk2bjan3b6fncefh"

	def self.fetch (sequence)
		sequence = get("/public/v1.0/lists/movies/#{sequence}.json?country=us&apikey=#{@api_key}")
		movies = JSON.parse(sequence)["movies"]
	end

	def self.update_db (sequence)
		movies = fetch sequence
		movies.each do |movie|
		  	title = movie["title"]
		  	puts  "#{sequence}: #{title}"
			movie_temp = Movie.find_or_initialize_by(title: title)

			movie_temp.update_attributes({
			   :year  => movie["year"],
			   :mpaa_rating => movie["mpaa_rating"],
			   :runtime => movie["runtime"],
			   :critics_consensus => movie["critics_consensus"] ,
			   :release_date => movie["release_dates"]["theater"],
			   :critics_rating => movie["ratings"]["critics_rating"],
			   :critics_score => movie["ratings"]["critics_score"],
			   :audience_rating => movie["ratings"]["audience_rating"],
			   :audience => movie["ratings"]["audience_score"],
			   :synopsis  => movie["synopsis"],
			   :poster_thumbnail => movie["posters"]["original"],
			   :poster_detail => movie["posters"]["detailed"],
			   :imdb => movie["alternate_ids"]["imdb"],
			   sequence.to_sym => true
			})
		end
		
	end

	def self.process_tomato
	  
	  update_db "opening"
	  update_db "upcoming"
	  update_db "box_office"
	  update_db "in_theaters"

	end
end

