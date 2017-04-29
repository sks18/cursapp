class CreateWards < ActiveRecord::Migration
  def change
    create_table :wards do |t|
      t.integer :floor, null: false
      t.integer :nomer, null: false
      t.text :otdel, null: false
      t.integer :capacity, null: false
      t.index [:floor, :nomer], unique: true
      t.timestamps null: false
    end
  end
end

