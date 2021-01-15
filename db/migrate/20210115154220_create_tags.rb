class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.boolean :meme
      t.boolean :personal
      t.boolean :queer
      t.boolean :research
      t.boolean :comedy
      t.boolean :autobiographical
      t.boolean :poetry
      t.boolean :novel
      t.boolean :short_story

      t.timestamps
    end
  end
end
