local oldMethod = {}

function oldMethod.writeDrive()
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

    print iface

    for key,value in pairs(iface) do
      print("found member " .. key);
    end

    for i = 1 , 1 do
        iface.setInterfacePatternInput(1, database, 1, 64, i)
    end

    for i = 1 , 2 do
        iface.setInterfacePatternOutput(1, database, 2, 64, i)
    end

    print("Done")
    return true
end

return oldMethod