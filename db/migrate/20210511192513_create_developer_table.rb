class CreateDeveloperTable < ActiveRecord::Migration[5.2]
  def change
    create_table :developers do |t|
      t.string :company
    end
  end
end
