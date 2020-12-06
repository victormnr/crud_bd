class CreateProfessors < ActiveRecord::Migration[6.0]
  def change
    create_table :professors do |t|
      t.string :nameProfessor
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
