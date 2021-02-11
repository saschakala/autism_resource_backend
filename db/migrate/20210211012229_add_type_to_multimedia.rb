class AddTypeToMultimedia < ActiveRecord::Migration[6.0]
  def change
    add_column :multimedia, :type, :string
  end
end
