# Challenge 07 - Area of a Rectangular Room
CONVERSION_FACTOR = 0.09290304

def calc_area_room_retancle(comprimento, largura)
  comprimento * largura
end

def convert_feet_to_metric(area_em_pes)
  (area_em_pes * CONVERSION_FACTOR).round(3)
end

if __FILE__ == $0
  print "Qual é o comprimento dessa sala em pés? "
  comprimento = gets.chomp
  print "Qual é a largura dessa sala em pés? "
  largura = gets.chomp
  if largura.match?(/^\d+$/) && comprimento.match?(/^\d+$/)
    puts "Você colocou as medidas #{comprimento} pés e #{largura} pés"

    area_em_pes = calc_area_room_retancle(comprimento.to_i, largura.to_i)
    area_em_metros = convert_feet_to_metric(area_em_pes)

    puts "A area é:"
    puts "#{area_em_pes} pés²"
    puts "#{area_em_metros} metros²"
  else
    puts "Erro: numeros inválidos. Por favor digite números válidos"
  end
end
