class AddRutToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :rut , :string
    add_column :users, :name , :string
  end
end
