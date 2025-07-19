class AddCompletedToUserProgresses < ActiveRecord::Migration[8.0]
  def change
    add_column :user_progresses, :completed, :boolean
  end
end
