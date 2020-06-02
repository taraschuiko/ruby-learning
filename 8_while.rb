a = ARGV[0].to_i || 1

while a < 10
  a += 1
  puts "'a' variable is " + a.to_s
  sleep 1
end