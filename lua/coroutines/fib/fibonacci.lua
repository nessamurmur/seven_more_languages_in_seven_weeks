function fibonacci()
   local m = 1
   local n = 1

   while true do
      coroutine.yield(m)
      m, n = n, m + n
   end
end

generator = coroutine.create(fibonacci)

for n = 1, 10 do
   _success, value = coroutine.resume(generator)
   print(value)
end
