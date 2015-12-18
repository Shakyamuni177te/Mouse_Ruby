class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :name
      t.string :char_name
      t.integer :vibes

      t.timestamps null: false
    end
  end
end
