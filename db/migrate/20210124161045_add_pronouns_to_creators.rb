class AddPronounsToCreators < ActiveRecord::Migration[6.0]
  def change
    add_column :creators, :pronouns, :string
  end
end
