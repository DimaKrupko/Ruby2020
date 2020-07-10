    puts "Введіть три числа через пробіл"
    chysla = gets.chomp
    chysla = chysla.split (" ")
    m=chysla.sort { |x,y| y<=>x }
    for i in 0..2 do
        k=m[i].to_i
        if (k>10) || (k<1)
            puts "Веддіть числа від 1 до 10"
        end
    end
    a, b, c =m[0].to_i, m[1].to_i, m[2].to_i
    max = (b+c)*a
    puts max
        