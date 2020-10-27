% ativa ou inativa exibição da execução
global exibe_grafico;
exibe_grafico = 1;

% inicializacao dos valores
tam_populacao = 100;
max_iteracoes = 25;
taxa_mutacao = 0.2;
duracao_pausa = 0.5;

% cria a populacao inicial
populacao = cria_populacao(tam_populacao);

% busca pela melhor populacao
geracao = 0;
while geracao < max_iteracoes
  
    % exibe a geracao
    exibe_populacao(populacao);
    
    % obtem adaptabilidade de cada indivíduo,
    % atribuindo o maior valor para o melhor indivíduo
    vetor_adaptabilidade = atribuicao_proporcional_aptidao(populacao);

    % obtem nova população
    nova_populacao = zeros(size(populacao));
    for i=1:tam_populacao
        
        % obtem indivíduos que serão os pais
        pai1 = obtem_pai(populacao, vetor_adaptabilidade);
        pai2 = obtem_pai(populacao, vetor_adaptabilidade);
        
        % realiza o crossover entre os pais
        filho = cruzamento(pai1, pai2);
        
        % realiza a mutação
        filho = mutacao(filho, taxa_mutacao);
        
        % adiciona o filho à nova população
        nova_populacao(i, 1:2) = filho;
        
    end
    
    % Atualiza população
    populacao = nova_populacao;
    geracao = geracao + 1;  
    
    pause(duracao_pausa);
    
end

melhor_individuo = obtem_melhor_individuo(populacao);
melhor_X = populacao(melhor_individuo, 1);
melhor_Y = populacao(melhor_individuo, 2);
disp('Melhor indivíduo:');
disp(melhor_individuo);
disp('Coordenadas do melhor indivíduo:');
disp([melhor_X melhor_Y]); 
disp('Valor obtido pelo melhor indivíduo:');
disp(bird(melhor_X, melhor_Y));

