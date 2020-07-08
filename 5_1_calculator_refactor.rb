﻿# Написати програму-калькулятор
#
# При запуску програма друкує в консолі інструкцію та очікує введення даних.
#
# На вході вона має отримувати три числові аргументи введені через пробіл:
#   operation - код операції
#   operand1  - перший число
#   operand2  - друге число
# На основі цих даних, програма генерує відповідь та очікує наступного вводу.
# При введенні символу q, програма завершує своє виконання.
#

# 
# Ви маєте реалізувати логіку зчитування даних, їх опрацювання та
# обчислення результату відносно вхідних даних.
# 
class Calculator

  # Написати програму-калькулятор
#
# При запуску програма друкує в консолі інструкцію та очікує введення даних.
#
# На вході вона має отримувати три числові аргументи введені через пробіл:
#   operation - код операції
#   operand1  - перший число
#   operand2  - друге число
# На основі цих даних, програма генерує відповідь та очікує наступного вводу.
# При введенні символу q, програма завершує своє виконання.
#

# 
# Ви маєте реалізувати логіку зчитування даних, їх опрацювання та
# обчислення результату відносно вхідних даних.
# 

    
  # функція для зчитування даних та створення масиву аргументів
  def input
    # зчитайте вхідну інформацію
    input = gets.chomp
    # розділіть input на масив за допомогою символу пробілу string.split()
    input=input.split (" ")
  end

  # функція для обробки значення системи
  # в результаті до вхідного масиву додаємо четвертим елементом результат
  # також передбачено опрацювання некоректних даних 
  # та символу для виходу з програми
  def compute a
    result = operation a
    # якщо отриманий результат - вийти, 
    # то в результат і має вийти необхідне слово - "quit"
    if result == "q"
      result = "quit"
    # якщо отриманий результат - неіснуюча команда,
    # то в результат і має вийти необхідне слово - "next"
    elsif result == "n"
      result = "next"
    else
      # у випадку, якщо все добре і вдалось отримати результат,
      # дописати до масиву a цей результат і повернути масив a
      a.push (" #{ result } ")
      return a
    end
  end

  # функція, яка обробляє отримані параметри
  # аргументом функції є масив з 3 елементів
  def operation a
   
        op = a[0]
        b = a[2].to_f
        a = a[1].to_f
        v = "q"
        g = "n"
        case op
        when "1" then result = Float(a + b)
        when "2" then result = Float(a - b)
        when "3" then result = Float(a * b)
        when "4" then result = Float(a / b)
        when "q" then result = v.to_s
        else
            result = g.to_s 
        end
  end

  # функція, яка опікується красивим виводом результату
  # на вхід отримує масив з 4 елементів ( 3 вхідних і результат )
  # результатом функції має бути наступний рядок
  # наприклад:  1.0 + 0.6 = 1.6
  def print_data a
    # ініціалізувати змінну res першим аргументом ( числом )
    res = "#{a[1]} "
    # в залежності від операції додати необхідний символ
    res += case a[0]
    when "1" then "+"
    when "2" then "-"
    when "3" then "*"
    when "4" then "/"
    end
    # доформувати рядок-результат res за допомогою другого члена,
    # знаку дорівнює та результату
    res += " #{a[2]} = #{a[3]}"
    # функція має виводити в консоль отриманий результат
    puts res
  end

  # функція, яка здатна обробити вхідну інформацію та 
  # надати відповідь
  def process
    result = compute input
    case result
    when "quit"
      # команда, яка завершує виконання скрипта
      abort
    when "next"
      puts "Введіть код операції, яку підтримує система"
    else
      # вивід у описаному нами форматі 
      print_data result
    end
  end

  # функція, яка виводить повідомлення в консоль та запускає процес інтерпретації
  def console_calculator
    puts "Для обчислення бінарних операцій слід записувати через пробіл \n код операції та два операнди"
    puts "Коди операцій 1: +, 2: -, 3: *, 4: /"
    puts "Для виходу з програми введіть символ 'q'"

    while 1 == 1
      # тут слід викликати функцію, яка може опрацювати одну порцію вхідної інформації
      process
    end
  end
end

Calculator.new.console_calculator
