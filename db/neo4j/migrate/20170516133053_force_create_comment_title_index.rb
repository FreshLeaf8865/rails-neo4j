class ForceCreateCommentTitleIndex < Neo4j::Migrations::Base
  def up
    add_index :Comment, :title, force: true
  end

  def down
    drop_index :Comment, :title
  end
end
