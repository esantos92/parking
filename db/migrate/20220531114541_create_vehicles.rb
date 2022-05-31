class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :plate
      t.datetime :checkout
      t.string :status

      t.timestamps
    end
  end
end
