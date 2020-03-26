#teachers_list = [
#  [ "Matt Hardy", "matthardy@flat.edu", "hardip" ],
 # [ "Chelsea Matthews", "chelmatt@flat.edu", "mattchel" ],
#  [ "Robert Fredericks", "rfreddy@flat.edu", "robfred" ],
#  [ "James Wilkos", "jwilkos@flat.edu", "jwilly" ],
#  [ "Barry White", "bwhite@flat.edu", "barry93" ]
#]
#teachers_list.each do |name, email, password|
#  Teacher.create( name: name, email: email, password: password )
#end

Teacher.create(:name => "Matt Hardy", :email => "matthardy@flat.edu", :password_digest => "hardip")

Teacher.create(:name => "Chelsea Matthews", :email => "chelmatt@flat.edu", :password_digest => "mattchel")

Teacher.create(:name => "Robert Fredericks", :email => "rfreddy@flat.edu", :password_digest => "robfred")

Teacher.create(:name => "James Wilkos", :email => "jwilkos@flat.edu", :password_digest => "jwilly")

Teacher.create(:name => "Barry White", :email => "bwhite@flat.edu", :password_digest => "barry93")

puts "Success: Theme data loaded"
