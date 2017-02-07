# mergesort

def merge(arr1, arr2)
   arr1 = arr1.sort!
   arr2 = arr2.sort!
   merged = []

   arr1_len = arr1.length
   arr2_len = arr2.length
   i = 0
   j = 0

   while i < arr1_len && j < arr2_len


     if arr1[i] <= arr2[j]
       merged.push(arr2[j])
       i+=1
     else
       merged.push(arr2[j])
       j+=1
     end
   end

   if i < arr1_len
     merged += arr1[i..-1]
   else
     merged += arr2[j..-1]
   end
   merged
end

def mergesort(array)
  len = array.length
  return array if len == 1
  part1 = array.slice(0, len/2)
  part2 = array.slice(len/2 ,len -1)
  p "#{part1}, this is part1"
  p "#{part2}, this is part2"

  merge(mergesort(part1), mergesort(part2))
end
