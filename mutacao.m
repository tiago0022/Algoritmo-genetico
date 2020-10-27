function [individuo_novo] = mutacao(individuo_original, taxa_mutacao)
    
    individuo_novo = individuo_original;
    minimo = -2*pi;
    maximo = 2*pi;
    
    for i = 1 : size(individuo_novo)            
        chance_mutacao = rand(1); 
        % realiza a mutacao
        if chance_mutacao <= taxa_mutacao
            individuo_novo(i) = rand(1)*(maximo - minimo) + minimo;
        end
    end
     
end

