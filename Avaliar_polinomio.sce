

function [valor_aprox, erro_percentual] = avaliar_polinomio(POL, ponto, valor_real)
    // Avalia o polinômio em um ponto específico
    valor_aprox = horner(POL, ponto);
    
    if argn(2) == 3 then
        // Se o valor real for fornecido, calcula o erro percentual
        erro_percentual = abs((valor_aprox - valor_real) / valor_real) * 100;
    else
        // Se não houver valor real, define o erro percentual como NaN
        erro_percentual = %nan;
    end

endfunction