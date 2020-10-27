function [pai] = obtem_pai(populacao, vetor_adaptabilidade)
    
    tamanho_populacao = size(populacao, 1);
    
    somatorio = 0;
    sorteio = rand(1)*100;
    
    % método roleta para escolha do pai
    for i=1:tamanho_populacao
        somatorio = somatorio + vetor_adaptabilidade(i);
        if sorteio <= somatorio
            pai = populacao(i,1:2);
            break;
        end
    end 
    
    % Tratativa de erro de arredondamento
    if sorteio == 100
        pai = populacao(tamanho_populacao, 1:2);
    end
    
end


