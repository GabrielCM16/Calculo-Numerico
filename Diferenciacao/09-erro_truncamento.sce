function erro_truncamento_P(h, derivada_2a_exata)
    error_trun = abs(- (h/2) * derivada_2a_exata);
    printf("Erro de truncamento: (progressiva 1a ordem): |-(h/2) * derivada_2a_exata| = %.6f\n", error_trun);
endfunction

function erro_truncamento_R(h, derivada_2a_exata)
    error_trun = abs((h/2) * derivada_2a_exata);
    printf("Erro de truncamento: (regressiva 1a ordem): |(h/2) * derivada_2a_exata| = %.6f\n", error_trun);
endfunction

function erro_truncamento_C21(h, derivada_3a_exata)
    error_trun = abs((h^2/6) * derivada_3a_exata);
    printf("Erro de truncamento: (centrada 2a ordem): |(h^2/6) * derivada_3a_exata| = %.6f\n", error_trun);
endfunction

function erro_truncamento_C(h, derivada_4a_exata)
    error_trun = abs((h^2/12) * derivada_4a_exata);
    printf("Erro de truncamento: (centrada 2a ordem - 2a derivada): |(h^2/12) * derivada_4a_exata| = %.6f\n", error_trun);
endfunction

