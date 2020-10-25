function exibe_individuo(populacao, individuo)
x = populacao(individuo,1);
y = populacao(individuo,2);
z = bird(x, y);
plot3(x, y, z, 'x', 'Color','r','LineWidth', 2, 'MarkerSize', 8);