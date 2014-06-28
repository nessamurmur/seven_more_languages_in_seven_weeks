local mt = {
   __index = strict_read,
   __newindex = strict_write
}

treasures = {}
setmetatable(treasures, mt)

local _private = {}

function strict_read(_private, key)
   if _private[key] then
      return _private[key]
   else
      error("Invalid key: " .. key)
   end
end

function strict_write(_private, key, value)
   if _private[key] then
      error("Duplicate key: " .. key)
   else
      _private[key] = value
   end
end
