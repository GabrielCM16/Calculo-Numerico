function plotar_interpolador(X, Y, COEF)
    // Validação: se COEF for do tipo polinômio, converte para vetor de coeficientes
    if typeof(COEF) == "polynomial" then
        COEF = coeff(COEF); 
    end

    // Construção do polinômio interpolador com base nos coeficientes fornecidos
    Pol = poly(COEF, 'x', 'c');

    // Geração de 300 pontos igualmente espaçados entre os extremos do vetor X
    xx = linspace(X(1), X($), 300);

    // Avaliação do polinômio nos pontos xx usando o esquema de Horner (otimizado numericamente)
    yy = horner(Pol, xx);

    // Geração do título dinâmico contendo a expressão simbólica do polinômio
    titulo = "Polinômio interpolador: p_n(x) = " + pol2str(Pol);

    // Limpa a figura atual antes de plotar
    clf();

    // Plotagem: pontos originais em vermelho e curva interpoladora em azul
    plot(X, Y, 'ro', xx, yy, 'b', 'LineWidth', 3);
    xgrid(); // Adiciona grade ao gráfico

    // Define título e rótulos dos eixos
    xtitle(titulo, "x", "f(x)");

    // Ajuste do tamanho da fonte dos elementos do gráfico
    a = gca(); // Obtém o objeto do eixo atual
    a.title.font_size = 4;
    a.x_label.font_size = 4;
    a.y_label.font_size = 4;
endfunction
