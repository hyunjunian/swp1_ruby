people = []
loop do
    puts "Enter name or enter 0 to end the input"
    name = gets.chomp
    break if name=="0"
    puts "Enter phone number"
    phoneNumber = gets.chomp
    puts "Enter gender"
    gender = gets.chomp
    if gender!="female"
        gender="male"
    end
    people<<{name: name, phoneNumber: phoneNumber, gender: gender}
end

people.each_with_index do|u,i|
    puts "#{i+1}. #{u[:name]}, #{u[:phoneNumber]}, #{u[:gender]}"
end