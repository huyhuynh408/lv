class CreateVictories < ActiveRecord::Migration
  def change
    create_table :victories do |t|
      t.string     :title, null: false
      t.string     :description, null: false
      t.integer    :ranking
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
