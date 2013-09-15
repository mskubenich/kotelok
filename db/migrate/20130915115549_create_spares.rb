class CreateSpares < ActiveRecord::Migration
  def change
    create_table :spares do |t|
      t.string :title
      t.integer :price
      t.text :preview
      t.text :body
      t.timestamps
    end
  end
end
