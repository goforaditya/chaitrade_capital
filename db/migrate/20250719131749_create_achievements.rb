class CreateAchievements < ActiveRecord::Migration[8.0]
  def change
    create_table :achievements do |t|
      t.string :name
      t.text :description
      t.string :icon
      t.integer :points

      t.timestamps
    end
  end
end
