task :fetch_movies => :environment do
  puts "rake task run successfully!"
  movies= TomatoWrap.retrieve

  movies.each do |movie|
  	title = movie["title"]
  	puts "added #{title}"
	movie_temp = Movie.find_or_initialize_by(title: title)

	movie_temp.update_attributes({
	   :year  => movie["year"],
	   :mpaa_rating => movie["mpaa_rating"],
	   :runtime => movie["runtime"],
	   :critics_consensus => movie["critics_consensus"],
	   :release_date => movie["release_dates"]["theater"],
	   :critics_rating => movie["ratings"]["critics_rating"],
	   :critics_score => movie["ratings"]["critics_score"],
	   :audience_rating => movie["ratings"]["audience_rating"],
	   :audience => movie["ratings"]["audience_score"],
	   :synopsis  => movie["synopsis"],
	   :poster_thumbnail => movie["posters"]["thumbnail"],
	   :poster_detail => movie["posters"]["detailed"],
	   :imdb => movie["alternate_ids"]["imdb"],
	   :box_office => true
	})
  end

end