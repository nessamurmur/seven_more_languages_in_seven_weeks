function is_prime(num)
   if num < 1 then
      return false
   else
      for n = 2, math.sqrt(num) do
         if num % n == 0 then
            return false
         end
      end
      return true
   end
end

function print_primes(num)
   for n = 1, num do
      if is_prime(n) then
         print(n)
      end
   end
end

print_primes(arg[1])
