class CreateInventries < ActiveRecord::Migration[6.1]
  def change
    create_table :inventries do |t|
      t.string :name
      t.text :introduction
      t.string :place
      t.integer :amount
      t.boolean :is_active
      t.timestamps
    end
  end
end
