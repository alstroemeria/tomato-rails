task :fetch_movies => :environment do
  TomatoWrap.process_tomato
end