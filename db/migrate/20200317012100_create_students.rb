class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_name
      t.date :student_birthday

      t.timestamps null: false
    end
  end
end
