local component = require "component"
local iface = component.me_interface

local guid = nil 
for k, v in component.list() do 
  if v == 'database' then 
    guid = k
    break
  end
end

local d = component.proxy(guid) or error("database not found")
local database = d.address

i = 0
while (i<64)
do
    i = i + 1
    iface.setInterfacePatternInput(1, database, 1, 64, i)
end

i = 0
while (i<128)
do
    i = i + 1
    iface.setInterfacePatternOutput(1, database, 2, 64, i)
end

print("Done")
print(type(component.list()))