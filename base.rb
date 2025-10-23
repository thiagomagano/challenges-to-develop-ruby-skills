#!/home/thi/.rbenv/versions/3.4.7/bin/ruby

# Basic function
def greet(name)
  "Hello #{name}, nice to meet you!"
end

# Basic program template
if __FILE__ == $0
  print 'Qual é o seu nome? '
  name = gets.chomp
  puts greet(name)
end
