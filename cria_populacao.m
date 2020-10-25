function [populacao] = cria_populacao(tamanho)

    maximo = 2 * pi;
    minimo = - 2 * pi;
    
    populacao = zeros(tamanho, 2);
    
     for i = 1 : tamanho
         for j = 1 : 2
            populacao(i,j) = rand(1)*(maximo - minimo) + minimo;
     end

end

