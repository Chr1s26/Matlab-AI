clear all; close all;

x1 = rand(10000,1);
x2 = randn(10000,1);

figure(1); hist(x1,-0.05:0.1:1.05);grid on;
figure(2); hist(x2,-3:0.1:3);grid on;
