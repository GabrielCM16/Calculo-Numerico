clear; clc; clf;

printf("*** MÉTODO DIRETO: GAUSS (ELIMINAÇÃO GAUSSIANA) SEM PIVOTEAMENTO ***\n\n");

// Definindo a matriz A e o vetor B
A_original = [3, 2, 4; 1, 1, 2; 4, 3, -2];
B_original = [1; 2; 3];

printf("Entrada - Matriz A (original):\n");
disp(A_original);

printf("Entrada - Vetor B (original):\n");
disp(B_original);

// Criando cópias para a triangularização
A_copia = A_original;
n = length(B_original);

L = zeros(n, n)
U = zeros(n, n);

//inicializa a diagonal de L com 1 (crout)
for i = 1:n
    L(i,i) = 1;
end

