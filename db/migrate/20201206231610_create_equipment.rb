class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.boolean :availability
      t.references :secretary, null: false, foreign_key: true
      t.references :equip_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
