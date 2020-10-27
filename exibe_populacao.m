function exibe_populacao(populacao)
global exibe_grafico;
if exibe_grafico
    % exibe a função inicial
    exibe_bird()
    hold on
    for i = 1:size(populacao)
        exibe_individuo(populacao, i)
    end
    hold off
end
