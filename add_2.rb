
puts "Введіть ціну товару,знижку у відсотках,та кількість товару через пробіл"

result=0

c=gets.chomp

c=c.split(" ")

price, discount, number =c[0].to_f, c[1].to_i, c[2].to_i

result=price*(discount*0.01)*number

puts result.round


