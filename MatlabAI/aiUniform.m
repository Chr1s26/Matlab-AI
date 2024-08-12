clear all; close all;

b = 2;
d_max = 20;
d = 0:1:d_max;

for  n = 1 : length(d)
    N(n) = b^d(n); 
end
[d' N']
sum(N)