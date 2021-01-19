class AddTitleToCreators < ActiveRecord::Migration[6.0]
  def change
    add_column :creators, :title, :string
  end
end
