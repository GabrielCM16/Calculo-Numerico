

clear();clc();
function gerarGrafico(minha_func, x0, x1, a, b, raiz_aprox, func_expr)
   
    //Geração dos pontos do gráfico completo
    x_total = linspace(x0, x1, 1000);
    y_total = minha_func(x_total);

    //Intervalo destacado
    x_destacado = linspace(a, b, 300);
    y_destacado = minha_func(x_destacado);

    //Plotagem iniciada
    clf();
    plot(x_total, y_total, "b-", "LineWidth", 2); // Função em azul
    xgrid();

    //Título perfumado
    titulo = "f(x) = " + func_expr + " com intervalo [" + string(a) + "; " + string(b) + "] destacado";
    xtitle(titulo, "x", "f(x)");

    //Intervalo destacado
    plot(x_destacado, y_destacado, "r-", "LineWidth", 3); // Intervalo em vermelho

    //Marcando raiz apoximada
    plot(raiz_aprox, minha_func(raiz_aprox), "ko", "MarkerSize", 8, "MarkerFaceColor", "k"); // pequeno círculo preto, não preenchido

    //linha horizontal y = 0
    plot(x_total, zeros(x_total), "k--");

    //legenda
    legend(["Função f(x)", "Intervalo destacado [" + string(a) + "; " + string(b) + "]", "Raiz aproximada"]);
endfunction

function gerarGraficoRad()

    clc;
    clear;
    funcprot(0);

    //Constantes
    h = 300;
    F = 0.8;
    D = 14;
    C = 1200;

    // Função com operações elemento a elemento
    deff('y = f(A)', 'y = (%pi*(h./cos(A)).^2 .* F) ./ (0.5*%pi*D^2*(1 + sin(A) - 0.5*cos(A))) - C');

    // Intervalo amplo para visualizar toda a curva
    A_full = linspace(-0.2, 0.2, 1000);
    Y_full = f(A_full);

    // Intervalo específico [0, π/25] para destacar
    A_dest = linspace(0, %pi/25, 200);
    Y_dest = f(A_dest);

    // Plot da função completa
    plot(A_full, Y_full, 'b-');
    xlabel("A (radianos)");
    ylabel("f(A)");
    title("Gráfico da função f(A) com destaque no intervalo [0, π/25]");
    xgrid();

    // Adiciona linha horizontal y = 0
    plot([-0.2, 0.2], [0, 0], 'r--');

    // Adiciona destaque sobre o intervalo [0, π/25]
    plot(A_dest, Y_dest, 'r-', 'LineWidth', 2); // linha vermelha mais grossa
    //legenda
    legend(["Função f(x)", "Intervalo destacado [" + string(a) + "; " + string(b) + "]", "Raiz aproximada"]);

endfunction


//GABRIEL COSTA DE MORAES 

//printf("PROBLEMA 1 \n");
//deff('y = f(x)', 'y = 162.5*x^3 - 243.75*x^2 + 130*x - 43.75')
//gerarGrafico(f, -2, 3, 0, 1, 0.958381, "162.5*x^3 - 243.75*x^2 + 130*x - 43.75");

//printf("PROBLEMA 2");
//deff('y = f(u)', 'y = 4*u^3 - 30*u^2 + 85*u - 160')
//gerarGrafico(f, 0, 7, 4, 5, 4.811275, "4*u^3 - 30*u^2 + 85*u - 160");

printf("PROBLEMA 3\n");
deff('y = f(d)', 'y = 25*d^2 + log(d) - 1.5')
gerarGrafico(f, 0.1, 1, 0.3, 0.4, 0.324135, "25*d^2 + log(d) - 1.5");

