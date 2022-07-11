def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str,i = 2)
  return str+" #{str}"*(i-1)
end

def start_of_word(a,i=1)
  return a.chars.first(i).join
end

def first_word(str)
  return str.split[0]
end

def titleize (str)
  str = str.capitalize
  words_to_ignore = ["the","and","of"]
  new_string = str.split(' ').each{|i| i.capitalize! if ! words_to_ignore.include? i }.join(' ')
  return new_string
end