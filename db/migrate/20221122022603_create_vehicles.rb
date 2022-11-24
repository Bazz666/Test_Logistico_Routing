class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :plate
      t.references :driver, null: true, foreign_key: true

      t.timestamps
    end
  end
end
