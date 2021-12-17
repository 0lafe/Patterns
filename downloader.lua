-- wget 'https://raw.githubusercontent.com/0lafe/Patterns/main/main.lua' -f "home/Patterns/main"

-- os.execute("wget https://raw.githubusercontent.com/0lafe/Patterns/main/main.lua -f home/Patterns/main")

names = {"main", "oldMethod", "test"}

for i,name in ipairs(names) do 
    os.execute("wget https://raw.githubusercontent.com/0lafe/Patterns/main/"..name..".lua -f /home/Patterns/"..name.."") 
end
