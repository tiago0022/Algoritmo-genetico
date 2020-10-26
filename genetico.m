% ativa ou inativa exibição da execução
global exibe_grafico;
exibe_grafico = 0;

% inicializacao dos valores
tam_populacao = 10;
max_iteracoes = 5;
taxa_muta = 0.2;

% exibe a função inicial
exibe_bird()
    
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
        
        filho = cruzamento(pai1, pai2);
        
    end
    
%         % sorteio do peso
%         alfa = rand(1);
%         
%         % gera dois novos filhos
%         if alfa < 0.6
%             x = (pai(1) * alfa) + (pai(2) * (1 - alfa));
%             nova_populacao(i, :) = [x, eval(funcao), 0];
%             x = (pai(2) * alfa) + (pai(1) * (1 - alfa));
%             nova_populacao(i + 1, :) = [x, eval(funcao), 0];
%         else
%             x = pai(1);
%             nova_populacao(i, :) = [x, eval(funcao), 0];
%             x = pai(2);
%             nova_populacao(i + 1, :) = [x, eval(funcao), 0];
%         end 
%     end
%     
%     % mutacao
%      for i = 1 : num_filhos,            
%          % sorteia se vai haver a mutacao
%          muta = rand(1);
%          % realiza a mutacao
%          if muta <= taxa_muta,
%              x = tamanho_intervalo * rand(1) + intervalo_minimo;
%              nova_populacao(i,:) = [x, eval(funcao), 0];
%          end
%      end
%      
%      % descartar os piores, colocando os filhos em seus lugares
%      populacao(:,3) = 0;
%      for i = 1 : num_filhos,
%          populacao(i,:) = nova_populacao(i,:);
%      end   
%            
    geracao = geracao + 1;  
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

