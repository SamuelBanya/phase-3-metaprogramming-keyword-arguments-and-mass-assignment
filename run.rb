def print_name_and_greeting(greeting, name)
  puts "#{greeting}, #{name}"
end

def happy_birthday(name, current_age)
  puts "Happy Birthday, #{name}"
  current_age += 1
  puts "You are now #{current_age} years old"
end

# NOTE: This is just to show that we use 'keyword arguments' with values ahead of time:
def happy_birthday_with_values(name: "Beyonce", current_age: 31)
  puts "Happy Birthday, #{name}"
  current_age += 1
  puts "You are now #{current_age} years old"
end

# NOTE: This is utilizing 'keyword arguments' in this scenario:
def happy_birthday_refactored(name:, current_age:)
  puts "Happy Birthday, #{name}"
  current_age += 1
  puts "You are now #{current_age} years old"
end

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

class PersonRefactored
  attr_accessor :name, :age

  # NOTE: By making the small change to include keyword arguments, the user can specify
  # the related values of these two variables in any order they wish:
  def initialize(name:, age:)
    @name = name
    @age = age
  end

end

print_name_and_greeting("'sup", "Donald")

happy_birthday("Beyonce", 31)

# Example of calling the refactored method above with keyword arguments in different orders:
happy_birthday_refactored(current_age: 31, name: "Carmelo Anthony")

# Example of using 'Mass Assignment' using the 'PersonRefactored' class above:
person_attributes = { name: "Sophie", age: 26}

# NOTE: Commenting out because this doesn't seem to work in Ruby 2.7 for some reason even with
# the 'double splat' operator, '**':
# NOTE: We have to use the 'double splat' operator in order to use convert a hash into keyword arguments:
# sophie = Person.new(**person_attributes)

puts "sophie: ", sophie
