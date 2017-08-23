def bubble_sort(hh)
  result = hh.to_a
  begin
    sorted = true
    (0..result.length - 2).each do |i|
      if result[i][1] > result[i + 1][1]
        result[i], result[i+1] = result[i+1], result[i]
        sorted = false
      end
    end
  end while !sorted
  result.to_h
end

def selection_sort(hh)
  arr = hh.to_a
  for i in 0..arr.length - 1
    min = i
    for j in i + 1..arr.length - 1
      min = j if arr[min][1] > arr[j][1]
    end
    arr[i], arr[min] = arr[min], arr[i]
  end
  arr.to_h
end

def insertion_sort(hh)
  arr = hh.to_a
  for i in 1..arr.length - 1
    tmp = arr[i]
    for j in 0..i - 1
      if arr[i][1] < arr[j][1]
        i.downto(j + 1) do |k|
          arr[k] = arr[k - 1]
        end
        arr[j] = tmp
        break
      end
    end
  end
  arr.to_h
end

def quicksort(hh)
  a = hh.to_a
  if (pivot = a.pop) then
    quicksort(a.select {|i| i[1] <= pivot[1]}) + [pivot] + quicksort(a.select {|i| i[1] > pivot[1]})
  else
    []
  end
end

hh = {}
8.times { hh[rand(16)] = rand(32) }
p hh

puts
p 'bubble sort'
p bubble_sort(hh)

puts
p 'selection sort'
p selection_sort(hh)

puts
p 'insertion sort'
p insertion_sort(hh)

puts
p 'quick sort'
p quicksort(hh).to_h
