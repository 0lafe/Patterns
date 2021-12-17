local component = require "component"
local iface = component.me_interface

local guid = nil 
for k, v in component.list() do 
  if v == 'database' then 
    guid = k 
  end 
end 
print("Адрес базы данных:"..guid)

local d = component.proxy(guid) or error("database not found")
local database = d.address

local db = component.database

slots = 81
i = 1

while (i<slots)
do
    if (db.get(i)) then
        print(db.get(i))
    end
    i = i + 1
end