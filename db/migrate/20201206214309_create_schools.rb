class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :addressSchool
      t.string :nameSchool
      t.string :director
      t.references :secretary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
