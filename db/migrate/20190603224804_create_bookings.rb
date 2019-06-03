class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :guest_id, null: false
      t.integer :spot_id, null: false
      t.datetime :start, null: false
      t.datetime :end, null: false
      t.integer :num_guest, null: false
      t.timestamps
    end
  end
end
