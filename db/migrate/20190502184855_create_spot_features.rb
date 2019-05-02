class CreateSpotFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_features do |t|
      t.integer :feature_id, null: false
      t.integer :spot_id, null: false
      t.timestamps
    end
    add_index :spot_features, :spot_id
  end
end
