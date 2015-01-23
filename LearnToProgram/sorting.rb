def sort_norm arr
	for i in 0..arr.length-1
    	index = i;
        for j in 0..arr.length-1
            if arr[j] < arr[index]
                index = j;
            end
		end

        smallerNumber = arr[index]; 
        arr[index] = arr[i];
        arr[i] = smallerNumber;
    end

    return arr.reverse
end

arr = ['dog', 'apple', 'cat', 'baby']
puts sort_norm arr
