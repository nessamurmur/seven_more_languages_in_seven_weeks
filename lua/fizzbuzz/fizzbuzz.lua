for num = 1, arg[1] do
   if num % 15 == 0 then
      print("Fizzbuzz")
   elseif num % 3 == 0 then
      print("Fizz")
   elseif num % 5 == 0 then
      print("Buzz")
   else
      print(num)
   end
end
