
function V = vander_matrix(X)
    n = length(X);
    V = zeros(n, n); // Inicializa a matriz de Vandermonde

    for i = 1:n
        for j = 1:n
            V(i, j) = X(i)^(j-1); // Preenche a matriz com potências de X
        end
    end
endfunction