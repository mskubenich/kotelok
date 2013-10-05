class CreatePricePages < ActiveRecord::Migration
  def change
    create_table :price_pages do |t|
      t.text :body
      t.timestamps
    end
  end
end
