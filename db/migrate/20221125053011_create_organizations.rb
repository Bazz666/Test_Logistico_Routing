class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.references :route, null: true, foreign_key: true
      t.timestamps
    end
  end
end
