class CreateBuyAdds < ActiveRecord::Migration[6.0]
  def change
    create_table :buy_adds do |t|
      t.string  :postal_code,        null: false
      t.integer :shipping_area_id,   null: false
      t.string  :town,               null: false
      t.string  :building_name
      t.string  :address,            null: false
      t.string  :phone,              null: false
      t.references :buy,             foreign_key: true
      
      t.timestamps
    end
  end
end
