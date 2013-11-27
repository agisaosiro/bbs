class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.decimal :id
      t.string :name
      t.date :create_at
      t.date :update_at

      t.timestamps
    end
  end
end
