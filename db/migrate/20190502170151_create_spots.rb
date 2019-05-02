class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.string :title, null: false
      t.string :home_type, null: false
      t.integer :host_id, null: false
      t.integer :loc_id, null: false
      t.text :description, null: false
      t.float :lat, null: false
      t.float :long, null: false
      t.float :price, null: false
      t.string :address, null: false
      t.integer :num_bedrooms, null: false
      t.integer :num_beds, null: false
      t.integer :num_guest, null: false
      t.timestamps
    end
    add_index :spots, :address, unique: true
  end
end
