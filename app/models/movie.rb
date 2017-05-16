class Movie 
  include Neo4j::ActiveNode

  property :title
  property :review, default: 'None reviews still'
  property :score, type: Float, default: 0

  validates :title, presence: true

  index :title

  has_many :in, :comments, origin: :movie
  has_many :in, :ratings, origin: :movie


end
