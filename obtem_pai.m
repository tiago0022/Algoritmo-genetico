function [pai] = obtem_pai(populacao, vetor_adaptabilidade)
    % TODO: obter indice baseado nas porcentagens do vetor_adaptabilidade,
    % ao invés de obter um índice aleatório
    indice = randi([1 10]);
    pai = [populacao(indice, 1) populacao(indice, 2)];

    %roleta
    somatorio = 0;
    sorteio = rand(1);

    for i = 1 : 2,
            for j=1:tamanho_populacao,
                for k=1:j,
                    somatorio = somatorio + populacao(k,3);
                end
                if sorteio <= somatorio,
                    pai(i) = populacao(j,1);
                    break;
                end
            end
    end 
end


