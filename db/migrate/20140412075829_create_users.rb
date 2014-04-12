class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :twitter_id
      t.integer :satellite_id

      t.timestamps
    end
  end
end
