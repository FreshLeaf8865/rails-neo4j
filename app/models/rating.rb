class Rating 
  include Neo4j::ActiveNode

  has_one :out, :movie, type: :movie
  has_one :out, :user, type: :user

end
