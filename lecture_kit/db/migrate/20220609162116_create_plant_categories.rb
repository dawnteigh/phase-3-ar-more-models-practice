class CreatePlantCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_categories do |t|
      t.integer :plant_id
      t.integer :category_id
    end
  end
end
