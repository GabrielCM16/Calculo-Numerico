function lagrange_1o_caso(X, Y, k, derivada_1a_exata)
    // X: pontos x
    // Y: pontos y
    // k: indice do ponto a ser avaliado
    // derivada_1a_exata: valor exato da 1a derivada
    // derivada_2a_exata: valor exato da 2a derivada
    
    h1 = abs(X(k) - X(k+1));
    h2 = abs(X(k+1) = X(k+2));
    h = h1 + h2; 
    derivada_numerica = (-3*Y(k) + 4*Y(k+1) - Y(k+2)) / h;
    printf("\n///////////////////////////////////////////////////////\n");
    printf(" Calculo da derivada de 1a ordem em x = %g pela formula progressiva de 1a ordem\n", X(k));
    printf(" Aproximacao  (-3*Y(k) + 4*Y(k+1) - Y(k+2)) / h \n")
    printf(" Computando: (-3*%f + 4*%f - %f) %f \n", Y(k), Y(k+1), Y(k+2), h);
    printf(" Resultado: %f\n", derivada_numerica);
    imprimir_erro(derivada_1a_exata, derivada_numerica);

endfunction

