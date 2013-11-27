class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.decimal :id
      t.string :name

      t.timestamps
    end
  end
end
