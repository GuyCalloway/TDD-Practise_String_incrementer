def incrementer(string)
    arr1 = []
    arr = string.split("")
    x = 1
    until x.to_i == 0 || x == "0"
        x = arr.pop
        arr1 << x
    end
    num =  arr1[0].to_i + 1    
    string + "#{num}"
end




#reverse