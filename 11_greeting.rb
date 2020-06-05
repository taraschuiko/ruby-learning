def hello_world(first_name="", last_name="")
  greeting = "Hello world\n"
  unless last_name == "" && first_name == ""
    greeting += "My name is " + first_name + " " + last_name
  end
  greeting
end

puts hello_world("James", "Bond")