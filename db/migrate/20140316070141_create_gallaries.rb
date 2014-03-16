class CreateGallaries < ActiveRecord::Migration
  def change
    create_table :gallaries do |t|
      t.string :title
      t.string :description
      t.string :pic

      t.timestamps
    end
  end
end
