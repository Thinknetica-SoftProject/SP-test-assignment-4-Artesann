## Задача №2:
#
# Ганс Грубер в это время пытается намайнить биткоины - чтобы сделать это ему нужно найти MD5 хэши,
# которые начинаются как минимум с 5 нулей.
# Значение, хэш которого нужно посчитать - это инпут (пользовательский ввод), за которым следует положительное число (1, 2, 3 итд).
#
# Например, для инпута abcdef результатом будет число 609043, потому что MD5 хэш для abcdef609043 начинается с 5 нулей (000001dbbfa...)
# и это минимальное такое число.
#
# Помогите Гансу найти это число.
#
# Требования к решению:
# - Инпут вводится пользователем (получение данных в коде через команду gets)
# - Результат (число) выводится через puts
#
#
## Решение:

require 'digest'

md5 = Digest::MD5.new 
input = gets.chomp
counter = 1
hash = md5.hexdigest(input + counter.to_s)

while !hash.start_with? "00000"
    counter += 1
    hash = md5.hexdigest(input + counter.to_s)
end

puts counter
