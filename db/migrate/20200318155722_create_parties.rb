class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :venue
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
