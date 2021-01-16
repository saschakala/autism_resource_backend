class AddCreatorToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :creator, foreign_key: true
  end
end
