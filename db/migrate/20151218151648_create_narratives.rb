class CreateNarratives < ActiveRecord::Migration
  def change
    create_table :narratives do |t|
      t.string :name
      t.string :char_name
      t.string :story_section

      t.timestamps null: false
    end
  end
end
