class AddTypeToMultimedia < ActiveRecord::Migration[6.0]
  def change
    add_column :multimedia, :media_type, :string
  end
end
