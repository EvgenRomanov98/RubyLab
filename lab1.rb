
def checkValidInput(num)
  num.to_s.chomp!
  abort "#{num} ошибка ввода, нужно ввести число" if num !~ /-?\d+/
  return num
end

puts "Введите угол фи:"
f = checkValidInput(gets).to_f
puts "Введите x:"
x = checkValidInput(gets).to_f
puts "Введите a:"
a = checkValidInput(gets).to_f
puts "Введите t:"
t = checkValidInput(gets).to_f

ln = Math.log10(f) + 16.3
puts ln

ctg = (ln / Math.sqrt((Math::E ** x) - (a ** (3 / 2))).to_f).abs
answer = ctg + ((6.8 + Math.cos(Math::PI - t ** 2)) / (Math.sin(a) ** 3))

puts "Ответ: " + answer.to_s
