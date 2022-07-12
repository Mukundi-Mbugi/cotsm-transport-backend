class Members < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :estate
      t.string :nearest_stage
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
