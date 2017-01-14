class RemoveSlugFromPages < ActiveRecord::Migration[5.0]
  def change
  	remove_column :pages, :slug
  end
end
