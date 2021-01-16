class AddCreatorToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :creator, null: false, foreign_key: true
  end
end
