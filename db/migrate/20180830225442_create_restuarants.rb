class CreateRestuarants < ActiveRecord::Migration[5.2]
  def change
    create_table :restuarants do |t|
      t.string :name
      t.text :description
      t.string :location
      t.float :rating
      t.integer :likes

      t.timestamps
    end
  end
end
