class AddGameFieldsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :level, :integer, default: 1
    add_column :users, :experience, :integer, default: 0
    add_column :users, :trader_class, :string, default: "Intern"
    add_column :users, :coins, :integer, default: 100
  end
end
