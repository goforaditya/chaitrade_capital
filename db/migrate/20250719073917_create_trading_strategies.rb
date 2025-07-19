class CreateTradingStrategies < ActiveRecord::Migration[8.0]
  def change
    create_table :trading_strategies do |t|
      t.string :name
      t.text :description
      t.integer :level_required

      t.timestamps
    end
  end
end
