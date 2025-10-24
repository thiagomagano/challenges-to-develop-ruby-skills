# Challenge 07 - Area of a Rectangular Room
require_relative '../utils'

CONVERSION_FACTOR = 0.09290304

def calc_area_room_retancle(comprimento, largura)
  comprimento * largura
end

def convert_feet_to_metric(area_em_pes)
  (area_em_pes * CONVERSION_FACTOR).round(3)
end

if __FILE__ == $0
  comprimento = get_valid_integer("Qual é o comprimento dessa sala em pés? ")
  largura = get_valid_integer("Qual é a largura dessa sala em pés? ")

  puts "Você colocou as medidas #{comprimento} pés e #{largura} pés"

  area_em_pes = calc_area_room_retancle(comprimento, largura)
  area_em_metros = convert_feet_to_metric(area_em_pes)

  puts "A area é:"
  puts "#{area_em_pes} pés²"
  puts "#{area_em_metros} metros²"

end
