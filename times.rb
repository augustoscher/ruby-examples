puts "=== TIME === "
t = Time.now
puts t.class
puts t
puts t.year
puts t.month
puts t.day
puts t.strftime('%d/%m/%y')
puts t.saturday?
t2 = Time.now
puts t == t2