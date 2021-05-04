class AddIndexToSlug < ActiveRecord::Migration[4.2]
  def change
    add_index :ants, :slug
  end
end
