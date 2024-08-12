clear all; close all;

% Initial state of the 8-puzzle
Matrix_d0 = [1 0 2; 4 5 3; 7 8 6]; 
% Goal state of the 8-puzzle
Matrix_f = [1 2 3; 4 5 6; 7 8 0];

% Generate depth 1 solution
Matrix_d1 = fun_Ch2_8puzzel_Action_ShiftBlank(Matrix_d0);
SolnYesNo_d1 = fun_Ch2_8puzzel_MatrixSolnYesNo(Matrix_d1, Matrix_f);

% Generate depth 2 solution
Matrix_d2_1 = fun_Ch2_8puzzel_Action_ShiftBlank(Matrix_d1(:, 1:3));
Matrix_d2_2 = fun_Ch2_8puzzel_Action_ShiftBlank(Matrix_d1(:, 4:6));
Matrix_d2_3 = fun_Ch2_8puzzel_Action_ShiftBlank(Matrix_d1(:, 7:9));
Matrix_d2 = [Matrix_d2_1 Matrix_d2_2 Matrix_d2_3];
SolnYesNo_d2 = fun_Ch2_8puzzel_MatrixSolnYesNo(Matrix_d2, Matrix_f);
