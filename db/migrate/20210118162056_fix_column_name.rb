class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :sources, :type, :source_type
  end
end
