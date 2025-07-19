class CreateNewsItems < ActiveRecord::Migration[8.0]
  def change
    create_table :news_items do |t|
      t.string :headline
      t.string :url

      t.timestamps
    end
  end
end
