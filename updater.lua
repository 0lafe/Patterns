names = {"main", "oldMethod", "updater", "newMethod"}

for i,name in ipairs(names) do 
    os.execute("wget https://raw.githubusercontent.com/0lafe/Patterns/main/"..name..".lua -f /home/Patterns/"..name..".lua") 
end
