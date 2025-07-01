function imprimir_erro(derivada_exata, derivada_numerica)
    // derivada_exata: valor exato da derivada
    // derivada_numerica: valor numerico da derivada
    erro_percentual = abs((derivada_exata - derivada_numerica) / derivada_exata) * 100;
    printf(" Erro relativo percentual: | (%f - %f) / %f | * 100%% = %f%%\n", derivada_exata, derivada_numerica, derivada_exata, erro_percentual);
endfunction