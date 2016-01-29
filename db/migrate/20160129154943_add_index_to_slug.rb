class AddIndexToSlug < ActiveRecord::Migration
  def change
    add_index :ants, :slug
  end
end
