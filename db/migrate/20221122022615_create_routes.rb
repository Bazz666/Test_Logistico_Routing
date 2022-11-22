class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.datetime :start_at
      t.datetime :ends_at
      t.time :travel_time
      t.integer :total_stops
      t.boolean :action
      t.references :driver, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
