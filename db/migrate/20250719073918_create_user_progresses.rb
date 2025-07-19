class CreateUserProgresses < ActiveRecord::Migration[8.0]
  def change
    create_table :user_progresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :tutorial_completed
      t.integer :progress

      t.timestamps
    end
  end
end
