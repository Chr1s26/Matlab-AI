function [Soln_YesNo] = fun_Ch2_8puzzel_MatrixSolnYesNo(Matrix_x, Matrix_f)
   
    Soln_YesNo = zeros(1, size(Matrix_x, 2) / 3);
    
    for n = 1:size(Matrix_x, 2) / 3
        Matrix_x1 = Matrix_x(:, 3 * n - 2 : 3 * n);
        if all(Matrix_x1(:) == Matrix_f(:))
            Soln_YesNo(n) = 1;
        else
            Soln_YesNo(n) = 0;
        end
    end
end
