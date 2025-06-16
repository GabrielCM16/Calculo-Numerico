
function [COEF] = Gauss(mat_vander, Vetor_Y)

    n = length(Vetor_Y);
    COEF = zeros(n, 1); // Inicializa o vetor de coeficientes

    // [1] ETAPA DE ELIMINAÇÃO DE GAUSS (triangularização)

    for k = 1:n-1
        for i = k+1:n
            m = mat_vander(i, k) / mat_vander(k, k); // Calcula o multiplicador
            mat_vander(i, k) = 0; // Zera o elemento abaixo do pivô
            for j = k+1:n
                mat_vander(i, j) = mat_vander(i, j) - m * mat_vander(k, j); // Atualiza a linha i
            end
            vetor_Y(i) = vetor_Y(i) - m * vetor_Y(k); // Atualiza o vetor Y
        end
    end

    // [2] ETAPA DE SUBSTITUIÇÃO RETROATIVA

    for k = n:-1:1
        soma = 0;
        for j = k+1:n 
            soma = soma + COEF(j) * mat_vander(k, j); // Soma os produtos dos coeficientes já encontrados
        end
        COEF(k) = (vetor_Y(k) - soma) / mat_vander(k, k); // Calcula o coeficiente atual
    end
endfunction