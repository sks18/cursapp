class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.date :dateofentrance, null: false
      t.text :reasonofentrance, null: false
      t.date :dateofissue, null: false
      t.text :dischargesummary, null: false
      t.references :card, index: true, foreign_key: true
      t.references :ward, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

