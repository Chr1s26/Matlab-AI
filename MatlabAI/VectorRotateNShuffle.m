
clear all;
close all;


x = [1 2 3 4 5];

len_x = length(x);
x_rotate = zeros(1, len_x); 

for n = 1:len_x
    x_rotate(n) = x(len_x + 1 - n);
end

matrix_size = 5;


x_shuffle_matrix = zeros(matrix_size, length(x));


for i = 1:matrix_size
    x_shuffle_matrix(i, :) = x(randperm(length(x)));
end


disp('Shuffled Matrix:');
disp(x_shuffle_matrix);

disp('Original and Rotated Vectors:');
disp([x' x_rotate']);
