class AddFieldsToBoiler < ActiveRecord::Migration
  def change
    add_column :boilers, :power, :integer
    add_column :boilers, :amount_of_space, :integer
    add_column :boilers, :price, :double
    remove_column :boilers, :description
    add_column :boilers, :preview, :text
    add_column :boilers, :body, :text
  end
end
