class CreatePois < ActiveRecord::Migration[6.1]
  def change
    create_table :pois do |t|
      t.string :icon
      t.string :information
      t.string :coords
      t.references :image, null: false, foreign_key: true

      t.timestamps
    end
  end
end
