class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :nameStudent
      t.references :classroom, null: false, foreign_key: true
      t.references :responsible, null: false, foreign_key: true

      t.timestamps
    end
  end
end
