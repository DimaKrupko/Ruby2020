    puts "Введіть числа через пробіл"
    s = gets.chomp
    s = s.split (" ")
    n = s.length
    c = 0
    for i in 0..n-1 do
        e = s[i].to_i
        if e == 0
            c+=1
        end
    end 
    v=n-c
    puts v
    