class AddToPartyTable < ActiveRecord::Migration
  def change
    change_table :parties do |t|
      t.string :student_name
    end
  end
end
