class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.datetime :start_at
      t.datetime :ends_at
      t.time :travel_time
      t.integer :total_stops
      t.integer :status
      t.references :driver, null: true, foreign_key: true
      t.references :vehicle, null: true, foreign_key: true

      t.timestamps
    end
  end
end
