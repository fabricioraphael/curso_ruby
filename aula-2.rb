def verifica_iten numero
        itens=0
        while numero != 1
                if numero.odd?
                        numero = numero*3+1
                else
                        numero = numero/2
                end
        itens += 1
        end
	itens
end

result=0
maior=0
for i in 1..1000000
        item = verifica_iten i
        if (item >= maior)
                maior = item
                result = i
        end
end
p "Numero: #{result} - itens: #{maior}"
