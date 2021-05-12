class CreateGamesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.references :developer
      t.references :console 
    end
  end
end
