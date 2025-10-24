def get_valid_integer(msg)
  loop do
    print msg
    input = gets.chomp

    begin
      # Tenta coneverter o input. Se funcionar, retorna o numero.
      return Integer(input)
    rescue ArgumentError
      # Se falhar, printa o erro e o loop vai se repetir.
      puts "'#{input}' não é um número válido por favor tente de novo"
    end
  end
end
