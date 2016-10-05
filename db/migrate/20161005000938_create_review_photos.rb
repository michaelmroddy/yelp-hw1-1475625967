class CreateReviewPhotos < ActiveRecord::Migration
  def change
    create_table :review_photos do |t|
      t.integer :review_id
      t.string :photo

      t.timestamps

    end
  end
end
