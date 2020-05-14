students = ["Leveille, Andre", "AshWorth, Ryan", "Biddinger, Caden", "Mbia, Arsene", "Boyden, Lindsay", "DelaCruz, Joey", "Dunshee, Kyle", "Riches, James", "Smith, Shawn", "Sultan, Maxwell", "Zarate, Javier"]

# create randomizer
student_formatted = students.map do |student|
  name_arr = student.split(',')
  first = name_arr[1].strip
  last = name_arr[0].strip 
  puts first
  puts last

  { first_name: first, last_name: last }
end

p student_formatted
# create new array of hashes with keys first_name and last_name


# randomize people and pull and assign into groups

# print and groups in slack friendly format