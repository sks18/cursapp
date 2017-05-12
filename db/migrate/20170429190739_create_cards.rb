class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.text :lastname, null: false
      t.text :firstname, null: false
      t.text :secondname
      t.integer :nomer, unique: true, null: false
      t.integer :insurancepolicy, unique: true
      t.text :typeoftreatment, null: false
      t.date :dateofcreation, null: false
      t.integer :pindex, null: false
      t.text :city, null: false
      t.text :street, null: false
      t.text :house, null: false
      t.text :building
      t.text :flat
      t.text :telephone
      t.integer :passportseries, null: false
      t.integer :passportnumber, null: false
      t.text :passsportfrom, null: false
      t.date :passportwhen, null: false
      t.text :allergy
      t.index [:passportseries, :passportnumber], unique: true
      t.timestamps null: false
      
    end
   reversible do |dir|
      dir.up do
        execute("ALTER TABLE cards ADD CONSTRAINT typecheck Check(typeoftreatment in ('Платно','Бесплатно'))")
      end
      dir.down do
         execute("ALTER TABLE cards DROP CONSTRAINT typecheck")
      end
    end
  end
end
