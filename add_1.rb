m = ["1", "2", "3", "4", "5","6","7","8","9","10","11","12"]
message = "Доброго дня\n"
message += "Для початку виберіть місяць\n"
message += "1. Січень\n"
message += "2. Лютий\n"
message += "3. Березень\n"
message += "4. Квітень\n"
message += "5. Травень\n"
message += "6. Червень\n"
message += "7. Липень\n"
message += "8. Серпень\n"
message += "9. Вересень\n"
message += "10. Жовтень\n"
message += "11. Листопад\n"
message += "12. Грудень\n"
puts message
month=gets.chomp
if (!m.include? month)
      # Якщо ні, то виводимо дане повідомлення
      puts "Введено невірно"
else
case month.to_i
    when 1
        puts 1
    when 2
        puts 2**2
    when 3
        puts 3**2
    when 4
        puts 4**2
    when 5
        puts 5**2
    when 6
        puts 6**2
    when 7
        puts 7**2
    when 8
        puts 8**2
    when 9
        puts 9**2
    when 10
        puts 10**2
    when 11
        puts 11**2
    when 12
        puts 12**2
    end
end