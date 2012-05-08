class AddHabtmTagsBooks < ActiveRecord::Migration
  def up
    create_table :books_tags, :id => false do |t|
      t.references :tag
      t.references :book
    end
  end

  def down
    drop_table :books_tags
  end
end
