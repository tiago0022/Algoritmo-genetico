function [filho] = cruzamento(pai1,pai2)

    quantidade_cromossomos = size(pai1, 2);
    possiblidades_corte = quantidade_cromossomos + 1;
        
    % sorteio do ponto de corte
    ponto_corte = randi([1 possiblidades_corte]);

    filho = zeros(1, quantidade_cromossomos);
    for i=1:quantidade_cromossomos
        if(i < ponto_corte)
            filho(i) = pai1(1, i);
        else
            filho(i) = pai2(1, i);
        end
    end
     
end

