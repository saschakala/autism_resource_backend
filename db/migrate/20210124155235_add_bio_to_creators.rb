class AddBioToCreators < ActiveRecord::Migration[6.0]
  def change
    add_column :creators, :bio, :text
  end
end
