class Comment 
  include Neo4j::ActiveNode
  property :title
  property :text

  index :title
  has_one :out, :movie, type: :movie
  has_one :out, :user, type: :user


end
