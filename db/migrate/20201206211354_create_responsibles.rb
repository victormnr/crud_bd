class CreateResponsibles < ActiveRecord::Migration[6.0]
  def change
    create_table :responsibles do |t|
      t.string :cpfResp
      t.string :addressResp
      t.string :nameResp
      t.float :income

      t.timestamps
    end
  end
end
