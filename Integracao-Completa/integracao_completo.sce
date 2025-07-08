clear; clc;

printf("\n Integracao completa - modulo completo \n");

exec("01-trapezio_dados.sce", -1);
exec("02-simpson_1_3_dados.sce", -1);
exec("g03-simpson_3_8_dados.sce", -1);
exec("04-trapezio_funcao.sce", -1);

//exemplo 5.7 slides
X = [0,2,4,6]
Y = [1,9,-67,217]

integral_exata =  37.5

printf("\n Metodo do trapezio Generalizado (dados tabulados): \n");
Trapezio_Dados(X, Y integral_exata);

printf("\n Metodo de Simpson 1/3 (dados tabulados): \n");
Simpson_1_3_Dados(X, Y, integral_exata);

printf("\n Metodo de Simpson 3/8 (dados tabulados): \n");
Simpson_3_8_Dados(X, Y, integral_exata);

deff('y=f(x)', 'y=1+97.5*x-65*x^2+9.125*x^3')
x0 = 0.0;
xn = 6.0;
n = 1000; //numero de subintervalos

printf("\n Metodo do trapezio (funcao dada ou calculada): \n");
Trapezio_Funcao(f, x0, xn, n, integral_exata);

printf("\n FIM integracao numerica");

