#Bubble Sort

def bubble_sort_by(array)
	n = array.length

	loop do
		swapped = false

		(n-1).times do |i|
			if yield(array[i], array[i+1]) > 0
				array[i], array[i+1] = array[i+1], array[i]
				swapped = true
			end
		end
		break if not swapped
	end
	array
end

def bubble_sort(array)
	n = array.length

	loop do
		swapped = false

		(n-1).times do |i|
			if array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
				swapped = true
			end
		end

		break if not swapped
	end

	array
end

my_array = [4,3,78,2,0,2]
first_sort = bubble_sort(my_array)


second_sort = bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
end

p first_sort
p second_sort