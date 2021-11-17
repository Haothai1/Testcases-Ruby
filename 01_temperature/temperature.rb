def ftoc(f)
    celsius = ( f - 32 )/ 1.8
    celsius.round(1)
    
end

def ctof(celsius)
    (celsius * 9.0 / 5) + 32.0
end
