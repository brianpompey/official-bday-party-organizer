Teacher.delete_all

Teacher.create(:name => "Matt Hardy", :email => "matthardy@flat.edu", :password => "hardip")

Teacher.create(:name => "Chelsea Matthews", :email => "chelmatt@flat.edu", :password => "mattchel")

Teacher.create(:name => "Robert Fredericks", :email => "rfreddy@flat.edu", :password => "robfred")

Teacher.create(:name => "James Wilkos", :email => "jwilkos@flat.edu", :password => "jwilly")

Teacher.create(:name => "Barry White", :email => "bwhite@flat.edu", :password => "barry93")

Student.delete_all

Student.create(:student_name => "Jimmy Green", :student_birthday => "2010-10-5", :teacher_id => 99)

Student.create(:student_name => "Lonnie Parker", :student_birthday => "2010-6-8", :teacher_id => 99)

Student.create(:student_name => "Tim Hall", :student_birthday => "2010-3-5", :teacher_id => 100)

Student.create(:student_name => "Pam Hollis", :student_birthday => "2010-4-4", :teacher_id => 100)

Student.create(:student_name => "Brad Wilson", :student_birthday => "2010-7-8", :teacher_id => 101)

Student.create(:student_name => "Terry Chan", :student_birthday => "2010-11-11", :teacher_id => 101)

Student.create(:student_name => "Mike Campbell", :student_birthday => "2010-5-5", :teacher_id => 102)

Student.create(:student_name => "Larry Thomas", :student_birthday => "2010-6-6", :teacher_id => 102)

Student.create(:student_name => "Cal Webber", :student_birthday => "2010-7-7", :teacher_id => 103)

Student.create(:student_name => "Jeff Williams", :student_birthday => "2010-04-06", :teacher_id => 103)

Party.delete_all

Party.create(:venue => "Gym", :student_name => "Jimmy Green", :party_date => "2010-10-5", :teacher_id => 99, :student_id => 122)

Party.create(:venue => "Cafeteria", :student_name => "Lonnie Parker", :party_date => "2010-6-8", :teacher_id => 99, :student_id => 123)

Party.create(:venue => "Gym", :student_name => "Tim Hall", :party_date => "2010-3-5", :teacher_id => 100, :student_id => 124)

Party.create(:venue => "Cafeteria", :student_name => "Pam Hollis", :party_date => "2010-4-4", :teacher_id => 100, :student_id => 125)

Party.create(:venue => "Gym", :student_name => "Brad Wilson", :party_date => "2010-7-8", :teacher_id => 101, :student_id => 126)

Party.create(:venue => "Cafeteria", :student_name => "Terry Chan", :party_date => "2010-11-11", :teacher_id => 101, :student_id => 127)

Party.create(:venue => "Gym", :student_name => "Mike Campbell", :party_date => "2010-5-5", :teacher_id => 102, :student_id => 128)

Party.create(:venue => "Cafeteria", :student_name => "Larry Thomas", :party_date => "2010-6-6", :teacher_id => 102, :student_id => 129)

Party.create(:venue => "Cafeteria", :student_name => "Cal Webber", :party_date => "2010-7-7", :teacher_id => 103, :student_id => 130)

Party.create(:venue => "Gym", :student_name => "Jeff Williams", :party_date => "2010-04-06", :teacher_id => 103, :student_id => 131)