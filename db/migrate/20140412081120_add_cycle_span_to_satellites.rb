class AddCycleSpanToSatellites < ActiveRecord::Migration
  def change
    add_column :satellites, :cycle_span, :integer
  end
end
