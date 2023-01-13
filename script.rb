def substrings (string, dict)
    res= {}
    dict.each do |word|
        re = string.each_char.each_cons(word.length).count(word.chars)
        res[word] = re if re > 0  
    end
    return res
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)