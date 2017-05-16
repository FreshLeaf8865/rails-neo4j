class ForceCreateMovieTitleIndex < Neo4j::Migrations::Base
  def up
    add_index :Movie, :title, force: true
  end

  def down
    drop_index :Movie, :title
  end
end
