function reduce(acc, func, tbl)
   for n in pairs(tbl) do
      acc = func(n, acc)
   end
   return acc
end

x = reduce(0, function (x, y) return x + y end, {1, 2, 3, 4, 5})
print(x)
