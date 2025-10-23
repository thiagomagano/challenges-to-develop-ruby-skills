#!/home/thi/.rbenv/versions/3.4.7/bin/ruby
def mad_lib(noun, verb, adjective, adverb)
  "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

if __FILE__ == $0
  print 'Enter a noun? '
  noun = gets.chomp
  print 'Enter a verb? '
  verb = gets.chomp
  print 'Enter an adjective? '
  adjective = gets.chomp
  print 'Enter an adverb? '
  adverb = gets.chomp
  puts mad_lib(noun, verb, adjective, adverb)
end
