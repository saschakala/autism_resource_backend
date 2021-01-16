class AddCreatorToBooks < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :creator, foreign_key: true
  end
end
