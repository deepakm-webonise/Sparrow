class CreateAnts < ActiveRecord::Migration
  def change
    create_table :ants do |t|
      t.string :in_url
      t.string :slug
      t.integer :clicks, default: 0
      t.string :snapshot
      t.string :title

      t.timestamps null: false
    end
  end
end
