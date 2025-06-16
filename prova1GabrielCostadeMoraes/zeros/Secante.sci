
//Resolvendo usando o Método da Bisseção

clear(); clc();
h = 300; F = 0.8; D = 14; C = 1200; 
printf("*** APROXIMAÇÃO PELO MÉTODO DA SECANTE ***\n\n")
function [xk, k] = secante(f, x0, x1, epsilon1, epsilon2, nMax)
   
    k = 0;
    xk = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0));
    
    printf(" k  |     xk     | abs(xk-x1) |    f(xk)   |\n");

    while (k < nMax) & (abs(xk - x1) > epsilon1) & (abs(f(xk)) > epsilon2)
        x0 = x1;
        x1 = xk;
        xk = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0));
        k = k + 1;
        printf(" %2.2i | %10.6f | %10.6f | %10.6f |\n", k, xk, abs(xk - x1), f(xk));
    end
    
    printf("\nAproximação ""%8.6f"" à raiz, com ""%2.2i"" iterações\n", xk, k);
endfunction

//GABRIEL COSTA DE MORAES 


//printf("PROBLEMA 1 \n");
//deff('y = f(x)', 'y = 162.5*x^3 - 243.75*x^2 + 130*x - 43.75')
//[xk, k] = secante(f, 0, 1.0, 1e-6, 1e-6, 100);

//printf("PROBLEMA 2");
//deff('y = f(u)', 'y = 4*u^3 - 30*u^2 + 85*u - 160')
//[xk, k] = secante(f, 4, 5.0, 1e-6, 1e-6, 100);

printf("PROBLEMA 3\n");
deff('y = f(d)', 'y = 25*d^2 + log(d) - 1.5')
[xk, k] = secante(f, 0.3, 0.4, 1e-6, 1e-6, 100);//
