class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|

      t.string  :work_name,            null: false
      t.integer :category_id,          null: false
      t.integer :value,                null: false
      t.integer :description,          null: false
      t.integer :shipping_cost_id,     null: false
      t.integer :shipping_area_id,     null: false
      t.integer :shipping_day_id,      null: false
      t.references :user,              foreign_key: true

      t.timestamps
    end
  end
end
