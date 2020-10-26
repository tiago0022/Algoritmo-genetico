function [pai] = obtem_pai(populacao, vetor_adaptabilidade)
    % TODO: obter indice baseado nas porcentagens do vetor_adaptabilidade,
    % ao invés de obter um índice aleatório
    indice = randi([1 10]);
    pai = [populacao(indice, 1) populacao(indice, 2)];
end


