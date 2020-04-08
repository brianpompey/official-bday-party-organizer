class Party < ActiveRecord::Base
  belongs_to :student
  belongs_to :teacher

  def party_exist?
    Party.where(party_date: @party.date).exists?
  end
end
