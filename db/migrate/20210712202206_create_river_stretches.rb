class CreateRiverStretches < ActiveRecord::Migration[6.1]
  def change
    create_table :river_stretches do |t|
      t.string :name
      t.string :river
      t.string :miles
      t.boolean :permit
      t.string :permit_link
      t.string :put_in

      t.timestamps
    end
  end
end
