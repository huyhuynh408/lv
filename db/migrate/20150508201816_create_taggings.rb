class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.string     :name, null: false
      t.belongs_to :victory
      t.belongs_to :tag
      t.timestamps null: false
    end
  end
end
