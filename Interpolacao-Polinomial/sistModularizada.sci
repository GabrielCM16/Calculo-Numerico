clear(); clc(); clf();

printf('\n INTERPOLAÇÃO POR SISTEMA DE EQUAÇÕES - Versão MODULARIZADA \n\n');

// [0] Carregamento das funções modularizadas

exec("Gauss.sce", -1);
exec("Vander_matrix.sce", -1);
exec("Avaliar_polinomio.sce", -1);
exec("Plotar_interpolador.sce", -1);

// [1] Entrada de dados

X = [0, 1, 2, 3];
Y = [1, 6, 5, -8];
n = length(X);
grau_polinomio = n - 1;

printf("\n[1] TABELA DE DADOS\n");
for i = 1:n
    printf("   x = %.6f; f(x) = %.6f\n", X(i), Y(i));
end

// [2] Construção da matriz de Vandermonde
printf("\n[2] MATRIZ DE VANDERMONDE\n");
Vander = Vander_matrix(X); // Correção crítica
disp(Vander);

// [3] Resolução do sistema de equações
COEF = Gauss(Vander, Y); // Uso da variável correta

printf("\n[3] COEFICIENTES DO POLINÔMIO \n");
coef_labels = ["a0", "a1", "a2", "a3", "a4", "a5"];
for i = 1:n 
    mprintf("   %s = %.6f\n", coef_labels(i), COEF(i));
end

// [4] Construção do polinômio interpolador
Pol = poly(COEF, 'x', 'c');
printf("\n[4] POLINÔMIO INTERPOLADOR \n");
disp(Pol);

// [5] Avaliação do polinômio em um ponto
ponto = 3.0;
valor_real = -8;
[valor_aprox, erro_percentual] = avaliar_polinomio(Pol, ponto, valor_real);

printf("\n[5] VALOR APROXIMADO: p(%.2f) = %.6f\n", ponto, valor_aprox);
printf("\n[6] ERRO PERCENTUAL: %.4f%%\n", erro_percentual);

// [6] Plotagem do gráfico
plotar_interpolador(X, Y, COEF);

printf("\n\n FIM DA INTERPOLAÇÃO POR SISTEMAS DE EQUAÇÕES \n\n");
