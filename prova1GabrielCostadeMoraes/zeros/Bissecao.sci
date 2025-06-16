
//Resolvendo usando o Método da Bisseção
funcprot(0);
clear(); clc();

printf("*** APROXIMAÇÃO PELO MÉTODO DA BISSEÇÃO ***\n\n")
function xm = bissecao(f, a, b, epsilon1, epsilon2, nMax)
    
    ak = a;
    bk = b;
    k = 0;
    xm = 0.5 * (ak + bk);

    printf("\n  k |     xm     | abs(bk-ak) |   f(xm)      | \n");
    printf("-----------------------------------------------\n");

    while (k < nMax) & (abs(bk - ak) > epsilon1) & (abs(f(xm)) > epsilon2)
        xm = 0.5 * (ak + bk);
        k = k + 1;

        printf(" %2d | %10.6f | %10.6f | %10.6f   |\n", k, xm, abs(bk - ak), f(xm));

        if f(ak) * f(xm) < 0 then
            bk = xm;
        else
            ak = xm;
        end
    end

    printf("-----------------------------------------------\n");
    printf("Aproximadamente: %8.6f é a raiz, com %2d iterações\n", xm, k);           
endfunction


//GABRIEL COSTA DE MORAES 

//printf("PROBLEMA 1 \n");
//deff('y = f(x)', 'y = 162.5*x^3 - 243.75*x^2 + 130*x - 43.75')
//bissecao(f, 0, 1.0, 1e-6, 1e-6, 100);

//printf("PROBLEMA 2");
//deff('y = f(u)', 'y = 4*u^3 - 30*u^2 + 85*u - 160')
//bissecao(f, 4, 5.0, 1e-6, 1e-6, 100);

printf("PROBLEMA 3\n");
deff('y = f(d)', 'y = 25*d^2 + log(d) - 1.5')
bissecao(f, 0.3, 0.4, 1e-6, 1e-6, 100);//
