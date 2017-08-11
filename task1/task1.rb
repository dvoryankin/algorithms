array = Array.new(9) { rand(33) }
p array

# обратиться к 3­му элементу массива
p array[2]

# добавить элемент в массив
array.push(77)
p array

# удалить 7­ой элемент массива
array.delete_at(6)
p array

# изменить значение 5­го элемента массива.
array[4] = 100
p array