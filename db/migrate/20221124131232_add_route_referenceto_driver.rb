class AddRouteReferencetoDriver < ActiveRecord::Migration[6.1]
  def change
    add_reference :drivers, :route, null: true, foreign_key: true
  end
end
