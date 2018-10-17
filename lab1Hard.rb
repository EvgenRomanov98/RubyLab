print "Введите температуру и шкалу (С or F): "
str = gets
str.chomp!
exit if str.nil? || str.empty?

temp, scale = str.split(" ")
abort "#{temp} недопустимое число." if temp !~ /-?\d+/
temp = temp.to_f
case scale
  when "C", "c"
    f = 1.8 * temp + 32
  when "F", "f"
    c = (5.0 / 9.0) * (temp - 32)
else
  abort "Необходимо задать С или F."
end

if f.nil?
  puts "#{c} градусов C "
else
  puts "#{f} градусов F "
end