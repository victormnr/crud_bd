class CreateClassrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :classrooms do |t|
      t.integer :grade
      t.string :letter

      t.timestamps
    end
  end
end
