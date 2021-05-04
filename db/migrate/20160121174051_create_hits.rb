class CreateHits < ActiveRecord::Migration[4.2]
  def change
    create_table :hits do |t|
      t.float :latitude
      t.float :longitude
      t.string :country
      t.belongs_to :ant, index: true

      t.timestamps null: false
    end
    add_foreign_key :hits, :ants
  end
end
