class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :source
      t.string :alt_text
      t.references :river_stretch, null: false, foreign_key: true
      t.string :caption

      t.timestamps
    end
  end
end
