#!/home/thi/.rbenv/versions/3.4.7/bin/ruby

def calc_years_to_retirement(age, age_retirement)
  age_retirement - age
end

def calc_year_of_retirement(year_to_come)
  actual_year = Time.now.year
  actual_year + year_to_come
end

if __FILE__ == $0
  print 'Quantos anos você tem? '
  actual_age = gets.chomp
  print 'Com quantos anos você quer se aposentar? '
  age_of_retirement = gets.chomp

  if actual_age.match?(/^\d+$/) && age_of_retirement.match?(/^\d+$/)
    age = actual_age.to_i
    age_retirement = age_of_retirement.to_i
    years_until_retirement = calc_years_to_retirement(age, age_retirement)
    puts "Faltam #{years_until_retirement} anos para você se aposentar."
    year_of_retirement = calc_year_of_retirement(years_until_retirement)
    puts "É #{Time.now.year} sua aposentadoria será somente em #{year_of_retirement}"
  else
    puts "Você precisa digitar duas idades validos"
  end
end
