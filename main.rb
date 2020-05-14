students = ["Leveille, Andre", "AshWorth, Ryan", "Biddinger, Caden", "Mbia, Arsene", "Boyden, Lindsay", "DelaCruz, Joey", "Dunshee, Kyle", "Riches, James", "Smith, Shawn", "Sultan, Maxwell", "Zarate, Javier"]

# create randomizer
    student_formatted = students.map do |student|
      name_arr = student.split(',')
      first = name_arr[1].strip
      last = name_arr[0].strip 
      puts first
      puts last

      { first_name: first, last_name: last }
      # create new array of hashes with keys first_name and last_name
    end

p student_formatted
    # shuffle students
student_formatted.shuffle! 

    groups = []

    5.times do |i| 
      groups.push( {name: "group#{i + 1}", members: [student_formatted.pop, student_formatted.pop] })
    end

index =  rand(groups.size)

groups[index][:members].push(student_formatted.pop)

# p groups
# p students_formatted.size

groups.each do |group|
  puts group[:name]
  puts "----------"
  group[:members].each do |member|
    puts "#{member[:first_name]} #{member[:last_name]}"
  end   
  puts "xxxxxxxxx"
end

# randomize people and pull and assign into groups

# print and groups in slack friendly format