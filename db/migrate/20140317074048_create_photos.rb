class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :pic
      t.integer :gallary_id

      t.timestamps
    end
  end
end
