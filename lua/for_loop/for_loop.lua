function for_loop(init, final, func)
   repeat
      func(init)
      init = init + 1
   until init == final + 1
end

function recur_for_loop(init, final, func)
   if init == final + 1 then
      return acc
   else
      func(init)
      recur_for_loop(init + 1, final, func, acc)
   end
end

for_loop(1,5, function (i) print(i) end)

recur_for_loop(1, 5, function (i) print(i) end)
