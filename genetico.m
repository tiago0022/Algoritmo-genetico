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

melhor_individuo = obtem_melhor_individuo(populacao);

% busca pela melhor populacao
geracao = 0;
while geracao < max_iteracoes
  
    % exibe a geracao
    exibe_populacao(populacao);
    
    % obtem adaptabilidade de cada indivíduo,
    % atribuindo o maior valor para o melhor indivíduo
    vetor_adaptabilidade = atribuicao_proporcional_aptidao(populacao);
    
%     % selecao dos melhores individuos da populacao, ordenando a populacao
%     populacao = sortrows(populacao, 3);
%     
%     % cria da nova geracao  
%     % reproducao
%     
%     % calcula o degrau
%     total = sum(populacao(:,2));
%     populacao(:,3) = populacao(:,2) / total;
%     
%     soma = 0;
%     for i = 1 : tam_populacao,
%         soma = soma + populacao(i,3);
%         populacao(i,3) = soma;
%     end
%     
%     clear nova_populacao;
%     for i = 1 : 2 : num_filhos,
%         
%         % sorteio dos pais
%         % metodo da roleta
%         somatorio = 0;
%         pai = [0 0];
%         sorteio = rand(1);
%         for k = 1 : 2,
%             for w=1:tam_populacao,
%                 for j=1:w,
%                     somatorio = somatorio + populacao(j,3);
%                 end
%                 if sorteio <= somatorio,
%                     pai(k) = populacao(w,1);
%                     break;
%                 end
%             end
%         end 
%         
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
%  
%  % retorna ao usuario o resultado final
%  populacao = flipud(sortrows(populacao, 2));
%  x_maximo = populacao(1,1);
%  y_maximo = populacao(1,2);
%  plot(eixo_x, eixo_y, '-k', populacao(:,1)', populacao(:,2)', 'xr');
%  buf = sprintf('x-max = %f\ny-max = %f', x_maximo, y_maximo);
%  text((2 * intervalo_maximo / 3) , (4 * y_maximo / 5), buf);

