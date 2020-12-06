class CreateFines < ActiveRecord::Migration[6.0]
  def change
    create_table :fines do |t|
      t.float :value
      t.string :reasonFine
      t.references :secretary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
