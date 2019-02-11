	$preguntas =Array.new
	$respuestas =Array.new

def carga()
	if File.exist?("proyecto_ruby.txt")
		if File.readlines("proyecto_ruby.txt") != nil
			File.foreach("proyecto_ruby.txt")do|line|
				resultado = line.chomp.split(',')
				$preguntas[resultado[0].to_i]=resultado[1]
				$respuestas[resultado[0].to_i]=resultado[2]	        		
			end
		end
	end
end	

def respuestas(solucion)
	puts $respuestas[solucion]
end

def definicion(id)
	puts $preguntas[id]
end

def recorrido()
	puts "Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
	it = 1
	while it < $preguntas.length()
		puts "Definición"
		puts definicion(it)

		puts "Adivinar"
        usuario = gets.chomp.strip  

        if usuario.downcase != $respuestas[it].downcase

        puts "Incorrecto!, Trata de nuevo"

    else
		puts "Correcto!"
		it += 1
	end
	end
end
carga
recorrido
