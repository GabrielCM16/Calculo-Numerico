function progressiva_1a_ordem(X, Y, k, derivada_1a_exata, derivada_2a_exata)
    // X: pontos x
    // Y: pontos y
    // k: indice do ponto a ser avaliado
    // derivada_1a_exata: valor exato da 1a derivada
    // derivada_2a_exata: valor exato da 2a derivada
    
    h1 = abs(X(k+1) - X(k));
    h2 = abs(X(k) = X(k-1));
    h = h1 + h2; 
    derivada_numerica = (Y(k+1) - Y(k)) / h;
    printf("\n///////////////////////////////////////////////////////\n");
    printf(" Calculo da derivada de 1a ordem em x = %g pela formula progressiva de 1a ordem\n", X(k));
    printf(" Aproximacao (f(xk+1) - f(xk)) / h \n")
    printf(" Computando: (%f - %f) / %f\n", Y(k+1), Y(k), h);
    printf(" Resultado: %f\n", derivada_numerica);
    imprimir_erro(derivada_1a_exata, derivada_numerica);
    erro_truncamento_P(h/2, derivada_3a_exata);

endfunction

