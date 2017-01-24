require 'pry'

def translate(string)

  vowels = ['a','e','i','o']
  novowels = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','u','v','w','x','y','z']
  ay = 'ay'
  compare='qu'
  final = []
  string.split(" ").each do |word|
      if vowels.include? word.slice(0)
        word<<ay
      else
        i=0
        while i <= word.length
          if novowels.include? word.slice(0) #if the the captured word's first letter != [aeio]
            if word.slice(0..1) == compare
                word<<word.slice(0..1)
                word[0..1]=""
                break
            else
               word << word.slice(0)            #store the first element into the first_letter array. #shift, takes the first letter and deletes it from the array.
            end
            word[0]=""
          end
          i+=1                             #increment i by one to check for the next first letter.
        end
        word << ay

      end
    final<<word
  end
  final.join(" ")
end
