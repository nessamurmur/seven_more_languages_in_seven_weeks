Villain = { health = 100 }

function Villain:new(name)
   obj = {
      name = name,
      health = self.health
   }
   setmetatable(obj, self)
   self.__index = self
   return obj
end

function Villain:take_hit()
   self.health = self.health - 10
   print(self.name .. " took 10 damage!")
   print(self.name .. " has " .. self.health .. " left!")
end
