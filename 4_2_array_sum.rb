﻿# програма для підсумовування всіх членів масиву

# Ви маєте дописати логіку сумування всіх членів масиву params,
# записавши результат у змінну b.

class Calculator
  def sum_of_array *params

    # вхідні параметри будуть записуватися у масив a
    a = params

    # у змінну b слід записати суму всіх отриманих чисел з a
    b=0
    
    a.each { | pos | b+= pos }


    # тут його слід вивести
    puts b

  end
end