class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :point_of_interest, null: false, foreign_key: true
      t.string :text
      t.integer :date
      t.string :img

      t.timestamps
    end
  end
end
