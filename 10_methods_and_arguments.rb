def hello_world(last_name="", first_name="")
  puts "Hello world"
  unless last_name == "" && first_name == ""
    puts "My name is " + first_name + " " + last_name
  end
end

hello_world("Chuiko", "Taras")
hello_world("Bond", "James")
hello_world