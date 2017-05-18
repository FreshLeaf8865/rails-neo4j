class RatingIndexes < Neo4j::Migrations::Base
  def up
    add_constraint :Rating, :uuid
  end

  def down
    drop_constraint :Rating, :uuid
  end
end
