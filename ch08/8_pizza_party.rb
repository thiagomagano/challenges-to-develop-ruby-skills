# Challenge 8 - Pizza Party
require_relative '../utils'

def get_pizza_per_person(qtd_people, qtd_pizza, qtd_slices)
  get_total_slices(qtd_pizza, qtd_slices) / qtd_people
end

def get_total_slices(qtd_pizza, slice_per_pizza)
  qtd_pizza * slice_per_pizza
end

def get_leftover(qtd_slices, qtd_people)
  qtd_slices % qtd_people
end

if __FILE__ == $0
  qtd_people = get_valid_integer("Quantas pessoas? ")
  qtd_pizzas = get_valid_integer("Quantas pizzas? ")
  qtd_slices_per_pizza = get_valid_integer("Quantos pedaços por pizza? ")

  qtd_total_slices = get_total_slices(qtd_pizzas, qtd_slices_per_pizza)


  puts "#{qtd_people} pessoas com #{qtd_pizzas} pizzas"
  puts "Dá #{get_pizza_per_person(qtd_people, qtd_pizzas,qtd_slices_per_pizza)} pedaços para cada"
  puts "Sobram #{get_leftover(qtd_total_slices, qtd_people)} pedaços"
end
