function [melhor_individuo] = obtem_melhor_individuo(populacao)
    
    melhor_individuo = 1;
    melhor_pontuacao = bird(populacao(1,1), populacao(1,2));
    
    for i = 1 : size(populacao)
        pontuacao_i = bird(populacao(i,1), populacao(i,2));
        if(pontuacao_i < melhor_pontuacao)
            melhor_individuo = i;
            melhor_pontuacao = pontuacao_i;
        end
    end
    
end

