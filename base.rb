#!/home/thi/.rbenv/versions/3.4.7/bin/ruby

def greet(name)
  "Hello #{name}, nice to meet you!"
end

if __FILE__ == $0
  print 'Qual é o seu nome? '
  name = gets.chomp
  puts greet(name)
end
