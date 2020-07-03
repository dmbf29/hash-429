require 'json'
students = %w(patrick rob samir micky)
student_ages = [37, 36, 21, 34]

students = [['patrick', 37, 'githubname'], ['rob', 36, 'github']]

# .chars == .split('')
# p students
# p student_ages



# print a message with the name and the age

students.each_with_index do |student, index|
  age = student_ages[index]
  "#{student} is #{age} years old"
end

# Array CRUD -> INDEX

# Read
students[0]
students.index('patrick')
students[-1]

# Create
students << 'moe'
# students.push('moe')

# Update
students[0] = 'veronica'

# Delete
students.delete('veronica')
students.delete_at(0)

# HASH -> Key
student_ages = {
  'patrick' => 37,
  'rob' => 36,
  'samir' => 21,
  'micky' => 34
}

# Read
# p student_ages
student_ages['patrick'] # age (integer)

# Create
student_ages['jocelyn'] = 12
# student_ages['jocelyn']

# Update
student_ages['jocelyn'] = 13

# Delete
student_ages.delete('jocelyn')


student_ages.keys.sort
student_ages.values.sort

student_ages.key?('patrick')
student_ages.value?(211)


# student_ages.sort_by {  }

student_ages.each do |name, age|
  "#{name} is #{age} years old"
end

# student_ages.each_with_index do |(name, age), index|
#   puts "#{number} - #{name} is #{age} years old"
# end

# new_one = student_ages.select do |name, age|
#   age > 21
# end

new_one = student_ages.map do |name, age|
  {
    'name' => name,
    'age' => age
  }
end
new_one.sort_by { |student_hash| student_hash['name'] }

# patrick = new_one.find do |student_hash|
#   student_hash['name'] == 'patrick'
# end
# :symbol

# p patrick

tokyo = {
  country: 'Japan',
  population: 13000000
}

tokyo[:country]


kyoto = {
  'country' => 'Japan',
  'population' => 2000000
}

kyoto[:country]

json = [1, 2, 3].to_json


# MEALS = {
#   "happy meal" => ['cheese burger', 'sprite']
# }

# MEALS['happy meal']


p json
p JSON.parse(json)


#
