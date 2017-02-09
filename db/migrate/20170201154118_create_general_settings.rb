class CreateGeneralSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :general_settings do |t|
      t.string :url
      t.string :logo
      t.text :description

      t.timestamps
    end
  end
end
