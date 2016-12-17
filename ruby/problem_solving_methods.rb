#initial variable (x=0)
#a loop to go through all elements in an array
#if value at index in array matches integer we are testing
# if the variable matches, print it out
# if it doesnt, increment the variable, and loop to match the next element in the array
#

#testarray = [2 ,4, 6, 8, 10, 22, 100]
#def searcharray(n, arr)
#	testvar = 0
#	if arr.include?(n) == false
#	puts "nil"
#	return
#	end
#	arr.each do |testvar|
#	if n == arr[testvar]
#	puts testvar
#	end
#end
#end

#searcharray(200, testarray)

###

# fibonacci 
# make a method that generatates fibbonacci numbers in an array
# be able to find

def fib(n)
  
  return n if n <= 1
  
  (fib(n - 1) + fib(n - 2))
  #p fibon
end

#puts fib(10)

def fin(n)
  fi = [0,1] 
  # fi.push(0) 
  # fi.push(1) 
   
  z = 2
  return n if n <= 1 
   
  while z < n 
  fi[z] = (fib(z-2) + fib(z-1))
  z += 1
  end
  fi[n]=(fib(n-2) + fib(n-1))
  p fi
end 

#fin(15)

# have array with integers
# go through each integer and compare to the next one.
# if the second integer is larger than the first, swap positions in the array with the first integer compared

def sort_array(x)
  n = x.length 
  loop do
    completion = false

    (n-1).times do |arr_num|
      if x[arr_num] < x[arr_num+1]
        x[arr_num], x[arr_num+1]=x[arr_num+1], x[arr_num]
        completion = true
      end     
    end        
    break if not completion
    
  end         
  x
end           

a = [5, 1, 100, 50]
p sort_array(a)