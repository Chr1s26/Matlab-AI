clear all; close all;

x1 = rand(10000,1);
x2 = randn(10000,1);
figure(1); hist(x1,-0.05:0.1:1.05);grid on;
figure(2); hist(x2,-3:0.1:3);grid on;


x3 = 2 + 3 * rand(10000, 1); 
figure(3);
hist(x3, 1.95:0.1:5.05); grid on;
title('Histogram of Uniformly Distributed Random Numbers (Shifted to [2, 5])');
xlabel('Value');
ylabel('Frequency');


x4 = randn(10000, 1);

% Find the proportion of values above +1.5
threshold = 1.5;
proportion_above_threshold = mean(x4 > threshold);

% Alternatively, use normcdf to calculate the theoretical probability
theoretical_proportion_above_threshold = 1 - normcdf(threshold);

% Display the results
fprintf('Proportion of values above +1.5 (empirical): %.4f\n', proportion_above_threshold);
fprintf('Proportion of values above +1.5 (theoretical): %.4f\n', theoretical_proportion_above_threshold);
