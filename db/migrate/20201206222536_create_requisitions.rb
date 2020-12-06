class CreateRequisitions < ActiveRecord::Migration[6.0]
  def change
    create_table :requisitions do |t|
      t.string :reasonReq
      t.references :responsible, null: false, foreign_key: true

      t.timestamps
    end
  end
end
