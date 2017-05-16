class Movie < Neo4j::Migrations::Base
  def up
    add_constraint :Movie, :uuid
  end

  def down
    drop_constraint :Movie, :uuid
  end
end
