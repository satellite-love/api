class CreateSatellites < ActiveRecord::Migration
  def change
    create_table :satellites do |t|
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
