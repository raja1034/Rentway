class CreateParkings < ActiveRecord::Migration[6.0]
  def change
    create_table :parkings do |t|
      t.string :title
      t.text :street_address
      t.text :description
      t.string :city
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
