# Array to Hash


movies = [
  ['Alfonso Cuaron',  'Gravity'],
  ['Spike Jonze',     'Her'],
  ['Martin Scorsese', 'The Wolf of Wall Street']
]

#Solution 1

imdb = {}

movies.each do |director, film|
  imdb[director] = film
end

puts imdb

#Solution 2

imdb = movies.inject({}) do |result, (director, film)|
  result[director] = film
  result
end

puts imdb



#Solution 3

puts movies.to_h



# Valid phone numbers

#check regular expresions

def valid_phone_number(str)
  if str. =~ /\A\(\d{3}\)\s\d{3}\-\d{4}\z/
    return true
  else
    return false
  end
end



puts valid_phone_number("(123) 456-7890") # => returns true
puts valid_phone_number("(1111)555 2345") # => returns false
puts valid_phone_number("(098) 123 4567") # => returns false
