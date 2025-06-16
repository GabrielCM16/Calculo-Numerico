
clear(); clc();

printf("*** APROXIMAÇÃO PELO MÉTODO DE NEWTON-RAPHSON ***\n\n")

function [xk, k] = newton_raphson(f, f1, a, b, epsilon1, epsilon2, nMax)
   
    xk = (a + b) / 2; 
    x0 = xk + 1;
    k = 0;
    
    printf(" k  |     xk     | abs(xk-x0) |    f(xk)   |   f1(xk)   |\n");
    
    while (k < nMax) & (abs(xk - x0) > epsilon1) & (abs(f(xk)) > epsilon2)
        x0 = xk;
        xk = x0 - f(x0) / f1(x0);
        k = k + 1;
        printf(" %2.2i | %10.6f | %10.6f | %10.6f | %10.6f |\n", k, xk, abs(xk - x0), f(xk), f1(xk));
    end
    
    printf("\nAproximação ""%8.6f"" à raiz, com ""%2.2i"" iterações\n\n", xk, k);
endfunction


//GABRIEL COSTA DE MORAES 

//printf("PROBLEMA 1 \n");
//deff('y = f(x)', 'y = 162.5*x^3 - 243.75*x^2 + 130*x - 43.75')
//deff('y = f1(x)', 'y = 130 - 487.5*x + 487.5*x^2')
//[xk, k] = newton_raphson(f, f1, 0, 1.0, 1e-6, 1e-6, 100);

//printf("PROBLEMA 2");
//deff('y = f(u)', 'y = 4*u^3 - 30*u^2 + 85*u - 160')
//deff('y = f1(u)', 'y = 85 - 60*u + 12*u^2')
//[xk, k] = newton_raphson(f, f1, 4, 5.0, 1e-6, 1e-6, 100);

printf("PROBLEMA 3\n");
deff('y = f(d)', 'y = 25*d^2 + log(d) - 1.5')
deff('y = f1(d)', 'y = 1/d + 50*d')
[xk, k] = newton_raphson(f, f1, 0.3, 0.4, 1e-6, 1e-6, 100);//
