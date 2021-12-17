local reader = {}

function reader.read(ifaceSlot)
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

    for k,v in pairs(iface.getInterfacePattern(ifaceSlot)) do
        print(k, v)
        for k1,v1 in pairs(v) do
           print(k1, v1) 
        end
    end
end

return reader