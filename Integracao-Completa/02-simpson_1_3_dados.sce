


function Simpson_1_3_Dados(X, Y, integral_exata)
    num_pontos = length(X);
    h = X(2) - X(1);

    printf("\n ///////////////////////////////////////////////////////\n");
    printf(" Metodo de Simpson 1/3 (dados tabulados): \n");
    printf(" Intervalo de %g a %g com %d pontos igualmente espaçados \n", X(1), X(num_pontos), num_pontos);

    printf("Formula: I ~ (h/2) * [f(x0) + 2 * sum(f(xi)) + f(xn)]\n");
    somatorio_pares = sum(Y(3:2:num_pontos-1));
    somatorio_impares = sum(Y(2:2:num_pontos-1));
    integral_numerica = (h / 3) * (Y(1) + 4 * somatorio_impares + 2 * somatorio_pares + Y(num_pontos));
    printf("h = %f\n", h);
    printf("Integral aproximada = %f\n", integral_numerica);
    erro_percentual = abs((integral_exata - integral_numerica) / integral_exata) * 100;

    printf("erro relativo = %.6f %%\n", erro_percentual);
endfunction
