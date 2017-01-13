class AddSlugToPageCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :page_categories, :slug, :string
    add_index :page_categories, :slug, unique: true
  end
end
