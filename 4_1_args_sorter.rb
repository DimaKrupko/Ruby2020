﻿# Посортувати всі вхідні параметри програми в масиві

# Ви маєте дописати логіку сортування масиву у спадному порядку.

class Calculator
    def sort_incoming_args

    # при запуску скрипту з консолі, аргументи які йдуть після імені файлу попадають в масив ARGV
    puts "Отримані аргументи"
    puts ARGV

    # тут його слід скопіювати в новий масив
    a = ARGV

    # тут його слід посортувати в спадаючому напрямку
    a=a.sort {|t,z| z <=> t }
    
    # тут його слід вивести
    puts "Посортовані вхідні аргументи"
    puts a

  end
end
