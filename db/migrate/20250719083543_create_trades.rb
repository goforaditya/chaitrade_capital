class CreateTrades < ActiveRecord::Migration[8.0]
  def change
    create_table :trades do |t|
      t.references :portfolio, null: false, foreign_key: true
      t.string :symbol
      t.integer :quantity
      t.decimal :price
      t.string :trade_type

      t.timestamps
    end
  end
end
