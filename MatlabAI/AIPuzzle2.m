function [Matrix_out] = fun_Ch2_8puzzel_Action_ShiftBlank(Matrix_i)
    % Locate the position of blank (0) in Matrix_i
    location_blank_Matrix = fun_Ch2_8puzzel_LocateBlank(Matrix_i);
    
    % Shift blank as per the location of the blank (0) and send the output.
    switch location_blank_Matrix
        case '11'
            Matrix_1 = [Matrix_i(1,2) Matrix_i(1,1) Matrix_i(1,3); Matrix_i(2,1) Matrix_i(2,2) Matrix_i(2,3); Matrix_i(3,1) Matrix_i(3,2) Matrix_i(3,3)];
            Matrix_2 = [Matrix_i(2,1) Matrix_i(1,2) Matrix_i(1,3); Matrix_i(1,1) Matrix_i(2,2) Matrix_i(2,3); Matrix_i(3,1) Matrix_i(3,2) Matrix_i(3,3)];
            Matrix_out = [Matrix_1 Matrix_2];
        case '12'
            Matrix_1 = [Matrix_i(1,2) Matrix_i(1,1) Matrix_i(1,3); Matrix_i(2,1) Matrix_i(2,2) Matrix_i(2,3); Matrix_i(3,1) Matrix_i(3,2) Matrix_i(3,3)];
            Matrix_2 = [Matrix_i(1,1) Matrix_i(1,3) Matrix_i(1,2); Matrix_i(2,1) Matrix_i(2,2) Matrix_i(2,3); Matrix_i(3,1) Matrix_i(3,2) Matrix_i(3,3)];
            Matrix_3 = [Matrix_i(1,1) Matrix_i(2,2) Matrix_i(1,3); Matrix_i(2,1) Matrix_i(1,2) Matrix_i(2,3); Matrix_i(3,1) Matrix_i(3,2) Matrix_i(3,3)];
            Matrix_out = [Matrix_1 Matrix_2 Matrix_3];
        case '13'
           
            error('Functionality for case 13 not implemented yet.');
    end
end
