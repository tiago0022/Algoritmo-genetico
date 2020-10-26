function [vetor_adaptabilidade] = atribuicao_proporcional_aptidao(populacao)

    tamanho_populacao = size(populacao, 1);
    vetor_pontuacao_absoluta = zeros(tamanho_populacao, 1);

    % Obtem o valor da função objetiva para cada indivíduo
    for i = 1:tamanho_populacao
        x = populacao(i, 1);
        y = populacao(i, 2);
        vetor_pontuacao_absoluta(i) = bird(x, y);
    end
    
    valor_maximo = max(vetor_pontuacao_absoluta);
    vetor_pontuacao_absoluta_equalizada = zeros(tamanho_populacao, 1);
    
    % Coloca o valor mínimo com a maior pontuação e o valor máximo como 0
    for i = 1:tamanho_populacao
        vetor_pontuacao_absoluta_equalizada(i) = valor_maximo - vetor_pontuacao_absoluta(i);
    end
    
    pontuacao_total = sum(vetor_pontuacao_absoluta_equalizada);
    vetor_adaptabilidade = zeros(size(populacao, 1), 1);
    
    % Calcula a atribuição proporcional de aptidao
    for i = 1:tamanho_populacao
        vetor_adaptabilidade(i) = vetor_pontuacao_absoluta_equalizada(i) / pontuacao_total;
    end
    
end

