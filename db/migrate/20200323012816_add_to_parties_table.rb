class AddToPartiesTable < ActiveRecord::Migration
  def change
    change_table :parties do |t|
      t.date :party_date
    end
  end
end
