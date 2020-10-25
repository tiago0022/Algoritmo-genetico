function exibe_populacao(populacao)
global exibe_grafico;
if exibe_grafico
    for i = 1:size(populacao)
        exibe_individuo(populacao, i)
    end
end
