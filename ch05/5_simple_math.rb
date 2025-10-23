#!/home/thi/.rbenv/versions/3.4.7/bin/ruby

def add(a, b)
  a + b
end
def sub(a, b)
  a - b
end
def multi(a, b)
  a * b
end
def div(a, b)
  a / b
end

def simple_math(a, b)
  str_add = "#{a} + #{b} = #{add(a,b)}\n"
  str_sub = "#{a} - #{b} = #{sub(a,b)}\n"
  str_multi = "#{a} * #{b} = #{multi(a,b)}\n"
  str_div = "#{a} / #{b} = #{div(a,b)}"

  return str_add + str_sub + str_multi + str_div
end

if __FILE__ == $0
  print 'Qual é o primeiro número? '
  num_a = gets.chomp
  print 'Qual é o segundo número? '
  num_b = gets.chomp

  if num_a.match?(/^\d+$/) && num_b.match?(/^\d+$/)
    a = num_a.to_i
    b = num_b.to_i
    puts simple_math(a,b)
  else
    puts "Você precisa digitar dois números validos"
  end

end
