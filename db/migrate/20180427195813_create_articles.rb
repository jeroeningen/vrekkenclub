class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.integer :category_id, default: 0, null: false
      t.string :title, null: false
      t.text :description

      t.timestamps
    end

    add_index :articles, :category_id
  end
end
