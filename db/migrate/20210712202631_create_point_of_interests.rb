class CreatePointOfInterests < ActiveRecord::Migration[6.1]
  def change
    create_table :point_of_interests do |t|
      t.string :icon
      t.string :information
      t.string :coords
      t.references :Image, null: false, foreign_key: true

      t.timestamps
    end
  end
end
