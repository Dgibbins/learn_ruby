def echo(string)
  "#{string}"
end

def shout(string)
  x=string.upcase
  return x
end

def repeat(string, num)
  Array.new(num, string).join(' ')
end

def start_of_word(string, x)
  string.slice(0..(x-1))
end

def first_word(string)
  y=string.split(" ")
  return y[0]
end

def titleize(string)

  words_to_ignore = ["over", "the", "and"]

  new_string = string.capitalize!.split(" ")

  new_string.each do |word|
    if words_to_ignore.include? word
      word
    else
      word.capitalize!
    end
  end
  return new_string.join(' ')
end
