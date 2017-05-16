require 'csv'
require 'omdbapi'
namespace :import_movies_csv do
  task :import => :environment do
    header_skipped=false
    CSV.foreach(Rails.root.join('sample',  'movie_metadata.csv')) do |row|
      if header_skipped
        movie_data = OMDB.title(row[11]) rescue nil #11 is a title
        Movie.create(title: (movie_data[:title] rescue row[11]), review: (movie_data[:plot] rescue 'no data' ), score: (row[25].to_f rescue 0.0))
      end
      header_skipped=true
    end
  end
end