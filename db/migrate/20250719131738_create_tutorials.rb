class CreateTutorials < ActiveRecord::Migration[8.0]
  def change
    create_table :tutorials do |t|
      t.string :title
      t.text :content
      t.string :difficulty
      t.text :prerequisites

      t.timestamps
    end
  end
end
