
//Resolvendo usando o Método da Falsa Posição


clear();clc();clf();

printf("*** APROXIMAÇÃO PELO MÉTODO DA FALSA-POSIÇÃO ***\n\n")

function [xk, k] = falsa_posicao(f, a, b, epsilon1, epsilon2, nMax)
    k = 0;
    xk = (a * f(b) - b * f(a)) / (f(b) - f(a));
    
    printf(" k  |     xk     | abs(b-a)   |    f(xk)   |\n");
    
    while (k < nMax) & (abs(b - a) > epsilon1) & (abs(f(xk)) > epsilon2)
        xk = (a * f(b) - b * f(a)) / (f(b) - f(a));
        k = k + 1;
        printf(" %2.2i | %10.6f | %10.6f | %10.6f |\n", k, xk, abs(b - a), f(xk));
        
        if f(a) * f(xk) < 0 then
            b = xk;
        else
            a = xk;
        end
    end
    
    // Exibir resultado final
    printf("\nAproximação ""%8.6f"" à raiz, com ""%2.2i"" iterações\n", xk, k);
endfunction


//GABRIEL COSTA DE MORAES 

//printf("PROBLEMA 1 \n");
//deff('y = f(x)', 'y = 162.5*x^3 - 243.75*x^2 + 130*x - 43.75')
//[xk, k] = falsa_posicao(f, 0, 1.0, 1e-6, 1e-6, 100);

//printf("PROBLEMA 2/n");
//deff('y = f(u)', 'y = 4*u^3 - 30*u^2 + 85*u - 160')
//[xk, k] = falsa_posicao(f, 4, 5.0, 1e-6, 1e-6, 100);

printf("PROBLEMA 3\n");
deff('y = f(d)', 'y = 25*d^2 + log(d) - 1.5')
[xk, k] = falsa_posicao(f, 0.3, 0.4, 1e-6, 1e-6, 100);
