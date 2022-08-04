dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary):
    word_array = []
    k=0
    while k < len(word):
        words = ''
        for i in range(k, len(word)):
            words += word[i]
            word_array.append(words.lower())
        k+=1
    return word_array

arr = substrings("Below", dictionary)
print(arr)
