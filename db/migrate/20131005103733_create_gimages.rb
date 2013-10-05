class CreateGimages < ActiveRecord::Migration
  def change
    create_table :gimages do |t|
      t.has_attached_file :file
      t.timestamps
    end
  end
end
