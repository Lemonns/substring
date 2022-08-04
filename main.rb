dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
    word_array = []
    k=0
    while k < word.length
        words = ""
        for i in k..word.length - 1 do
            words += word[i]
            word_array << words.downcase
        end
        k+=1
    end
    word_hash = Hash.new(0)
    word_array.each do |item|
        if dictionary.include?(item)
            if word_hash.key?(item)
                word_hash[item] += 1
            else
                word_hash[item] = 1
            end
        end
    end
    return word_hash
end

result = substrings("below?", dictionary)
print result