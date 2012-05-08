class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :isbn
      t.references :author

      t.timestamps
    end
    add_index :books, :author_id
  end
end
