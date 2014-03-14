class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.string :pic

      t.timestamps
    end
  end
end
