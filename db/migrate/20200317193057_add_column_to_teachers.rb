class AddColumnToTeachers < ActiveRecord::Migration
  def change
    change_table :teachers do |t|
      t.remove :password
      t.string :password_digest
    end
  end
end
