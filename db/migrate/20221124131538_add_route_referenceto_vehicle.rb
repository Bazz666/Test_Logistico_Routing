class AddRouteReferencetoVehicle < ActiveRecord::Migration[6.1]
  def change
    add_reference :vehicles, :route, null: true, foreign_key: true
  end
end
