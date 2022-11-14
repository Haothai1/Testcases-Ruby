class Book
# write your code here
attr_accessor :title
    
def title
    return titleize(@title)
end

private
def titleize message
    small_words = ["a","an","and","the","in","of"]
    array = message.split(" ")
    array2 = []
    array2.push(array[0].capitalize)
    i = 1
    while ( i < array.length)
        if !(small_words.include?(array[i])) || i == 0
        array2.push(array[i].capitalize)
        else
        array2.push(array[i])
        end
        i +=1
    end 
    
    return array2.join(" ")
end
end