teachers_list = [
  [ "Matt Hardy", "matthardy@flat.edu", "hardip" ],
  [ "Chelsea Matthews", "chelmatt@flat.edu", "mattchel" ],
  [ "Robert Fredericks", "rfreddy@flat.edu", "robfred" ],
  [ "James Wilkos", "jwilkos@flat.edu", "jwilly" ],
  [ "Barry White", "bwhite@flat.edu", "barry93" ]
]
teachers_list.each do |name, email, password|
  Teacher.create( name: name, email: email, password: password )
end
