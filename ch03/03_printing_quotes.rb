#!/home/thi/.rbenv/versions/3.4.7/bin/ruby
def printing_quotes(autor, sentence)
  "#{autor} disse, \"#{sentence}\"."
end

if __FILE__ == $0
  print 'Qual é a frase? '
  sentence = gets.chomp
  print 'Qual é o autor? '
  autor = gets.chomp
  puts printing_quotes(autor, sentence)
end
