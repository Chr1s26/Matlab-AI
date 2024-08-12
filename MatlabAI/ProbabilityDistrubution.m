clear all; close all;

Pt = 1; 
Gt = 1; 
Gr = 1; 
frequency = 2.4e9; 
c = 3e8; 
lambda = c / frequency; 

for n = 1:10000
        xy_Tx(n,:) = 10*rand(1,2); % generate 1x2 matrix between 0 and 10.
        xy_Rx(n,:) = 10*rand(1,2);
        d(n) = sqrt((xy_Tx(n, 1) - xy_Rx(n, 1))^2 + (xy_Tx(n, 2) - xy_Rx(n, 2))^2);
        Pr(n) = Pt * Gt * Gr / (4*pi*d(n) / lambda )^2;
end

[xy_Tx xy_Rx d']
figure(1) ; hist(d,0:1:15); grid on;
figure(2) ; hist(Pr,0:1:15); grid on;