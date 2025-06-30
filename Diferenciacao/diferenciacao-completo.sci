clear(); clc(); clf();

printf("Diferenciacao Numerica - Modulo completo\n");

exec("01-progressiva_1a_ordem.sce", -1);
exec("02-regressiva_1a_ordem.sce", -1);
exec("03-centrada_2a_ordem_laderv.sce", -1);
exec("04-centrada_2a_ordem_2aderv.sce", -1);
exec("05-lagrange_1o_caso.sce", -1);
exec("06-lagrange_2o_caso.sce", -1);
exec("07-lagrange_3o_caso.sce", -1);
exec("08-imprimir_erro.sce", -1);
exec("09-erro_truncamento.sce", -1);

X = [1.8, 1.9, 2.0, 2.1, 2.2];
Y = [10.889365, 12.703199, 14.778112, 17.148957, 19.855030];
k = 3; //indice do ponto a ser avaliado

x = 2
derivada_1a_exata = (x+1)*exp(x);
derivada_2a_exata = (x+2)*exp(x);
derivada_3a_exata = (x+3)*exp(x);
derivada_4a_exata = (x+4)*exp(x);

//derivada_1a_exata = 22.167168;
//derivada_2a_exata = 29.556224;
//derivada_3a_exata = 36.945270;
//derivada_4a_exata = 44.334337;

printf("\n n>>> Progressiva 1a ordem\n");
progressiva_1a_ordem(X, Y, k, derivada_1a_exata, derivada_2a_exata);

printf("\n n>>> Regressiva 1a ordem\n");
regressiva_1a_ordem(X, Y, k, derivada_1a_exata, derivada_2a_exata);

printf("\n n>>> Centrada 2a ordem\n");
centrada_2a_ordem(X, Y, k, derivada_1a_exata, derivada_3a_exata);

printf("\n n>>> Centrada 2a ordem - 2a derivada\n");
centrada_2a_ordem_2aderv(X, Y, k, derivada_2a_exata, derivada_4a_exata);

printf("\n n>>> Lagrange 1o caso\n");
lagrange_1o_caso(X, Y, k, derivada_1a_exata);

printf("\n n>>> Lagrange 2o caso\n");
lagrange_2o_caso(X, Y, k, derivada_1a_exata);

printf("\n n>>> Lagrange 3o caso\n");
lagrange_3o_caso(X, Y, k, derivada_1a_exata);

printf("\n FIM DIFERENCICAO NUMERICA\n");



