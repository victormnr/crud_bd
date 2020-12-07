class CreateJoinTableClassroomSubject < ActiveRecord::Migration[6.0]
  def change
    create_join_table :classrooms, :subjects, column_options: { null: false, foreign_key: true } do |t|
      t.index [:classroom_id, :subject_id]
      t.index [:subject_id, :classroom_id]
    end
  end
end
