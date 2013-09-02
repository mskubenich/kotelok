class CreateBoilers < ActiveRecord::Migration
  def change
    create_table :boilers do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
