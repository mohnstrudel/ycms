class AddPageCategoryToPages < ActiveRecord::Migration[5.0]
  def change
    add_reference :pages, :page_category, foreign_key: true
  end
end
