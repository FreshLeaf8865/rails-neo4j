class Comment < Neo4j::Migrations::Base
  def up
    add_constraint :Comment, :uuid
  end

  def down
    drop_constraint :Comment, :uuid
  end
end
