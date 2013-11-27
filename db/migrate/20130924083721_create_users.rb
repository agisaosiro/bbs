class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.decimal :id
      t.string :name

      t.timestamps
    end
  end
end
