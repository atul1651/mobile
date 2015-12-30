class CreateDs < ActiveRecord::Migration
  def change
    create_table :ds do |t|
      t.string :name
      t.text :address

      t.timestamps null: false
    end
  end
end
