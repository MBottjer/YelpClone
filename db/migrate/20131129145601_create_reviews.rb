class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :rating
      t.belongs_to :restaurant, index: true

      t.timestamps
    end
  end
end
