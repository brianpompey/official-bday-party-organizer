class Teacher < ActiveRecord::Base
  has_many :students
  has_many :parties

  has_secure_password
end
