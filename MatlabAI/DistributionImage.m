clear all; close all;

P_A = 0:0.1:1; %from 0 to 1 with increment of 0.1
P_B_A = 0:0.1:1;

for  n = 1:length(P_A)
        P_B(n,:) = P_A(n)*(P_B_A-1/2) + 1/2; % (n,:) means from n row , : means all column
        
end

imagesc(flipud(P_B')) ;colorbar();
disp('P_B matrix:');
disp(P_B);