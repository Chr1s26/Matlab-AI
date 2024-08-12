clear all; close all;

x = [1 2 3 4 5]
len_x = length(x);

for n = 1: len_x
        x_rotate(n) = x(len_x+1-n);
end

[x' x_rotate']

shuffled_x = x(randperm(length(x)));

% Display the original and shuffled vectors
[x' shuffled_x']