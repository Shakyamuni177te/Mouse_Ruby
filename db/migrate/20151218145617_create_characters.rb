class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :char_name
      t.string :bio

      t.timestamps null: false
    end
  end
end
