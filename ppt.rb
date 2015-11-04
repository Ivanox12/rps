piedra=0
papel=1
tijeras=2
valor =-1
random=Random.new
empate= true

while empate
	print "Seleccione piedra, papel o tijeras: "
		eleccion = gets.chomp
		cpu = random.rand(3)

	if eleccion == "piedra" 
		valor = piedra
	elsif eleccion == "papel"
		valor = papel
	else 
		valor=tijeras
	end 

	if valor == cpu
		puts "A ocurrido un empate, juega de nuevo"
	elsif (valor == piedra && cpu == papel) || (valor == tijeras && cpu == piedra) || (valor == piedra && cpu == tijeras)
		puts "perdiste"
		empate = false
	else 
		puts "ganaste"
		empate = false
	end
end

