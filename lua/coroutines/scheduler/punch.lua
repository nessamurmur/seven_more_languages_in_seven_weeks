dofile('scheduler.lua')

function punch()
   for i = 1, 5 do
      print('punch' .. i )
      wait(1.0)
   end
end

function block()
   for i = 1, 3 do
      print('block' .. i)
      wait(2.0)
   end
end

schedule(0.0, coroutine.create(punch))
schedule(0.0, coroutine.create(block))

run()
