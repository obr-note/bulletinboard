class CreateTreeCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :tree_categories do |t|
      t.references :tree, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
