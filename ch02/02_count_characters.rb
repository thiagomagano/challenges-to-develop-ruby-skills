#!/home/thi/.rbenv/versions/3.4.7/bin/ruby
def count_characters(word)
  "#{word} têm #{word.length} letras."
end

if __FILE__ == $0
  print 'Qual é a palavra que você deseja contar as letras? '
  word = gets.chomp
  puts count_characters(word)
end
