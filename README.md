# RoR test

Implemented:

- Movie, User, Rating and Comment
- rake task to import data from sample csv and query movie data from IMDB
- added gem for geolocation, but unused for now (ip is stored in Devise user model)

Installation:

- `bundle install` to install all needed gems
- update `config/neo4j.yaml` to match yor DB settings
- `bundle exec neo4j:migrate` to run needed migrations
- `bundle exec rake import_movies_csv:import` to initially fill the DB

- `rails s` to run

Sign up to have the ability to left the comments or edit the movies