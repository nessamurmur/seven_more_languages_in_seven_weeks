pending = {}

function schedule(time, action)
   pending[#pending +1] = {
      time = time,
      action = action
   }

   sort_by_time(pending)
end

function sort_by_time(array)
   table.sort(array, function(e1, e2)
                         return e1.time < e2.time
                     end)
end

function wait(seconds)
   coroutine.yield(seconds)
end

function remove_first(array)
   result = array[1]
   array[1] = array[#array]
   array[#array] = nil
   return result
end

function run()
   while #pending > 0 do
      while os.clock() < pending[1].time do end

      local item = remove_first(pending)
      local _, seconds = coroutine.resume(item.action)

      if seconds then
         later = os.clock() + seconds
         schedule(later, item.action)
      end
   end
end
