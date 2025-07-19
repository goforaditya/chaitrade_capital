class AddTutorialRefToUserProgresses < ActiveRecord::Migration[8.0]
  def change
    add_reference :user_progresses, :tutorial, null: false, foreign_key: true
  end
end
