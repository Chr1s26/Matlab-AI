clear all; close all;

% Constants
Pt = 1; % Transmitted power in watts
Gt = 1; % Gain of the transmitting antenna
Gr = 1; % Gain of the receiving antenna
frequency = 2.4e9; % Frequency in Hz (2.4 GHz for Wi-Fi)
c = 3e8; % Speed of light in m/s
lambda = c / frequency; % Wavelength

% Number of simulations
numSimulations = 10000;

% Preallocate arrays for efficiency
xy_Tx = zeros(numSimulations, 2);
xy_Rx = zeros(numSimulations, 2);
d = zeros(numSimulations, 1);
Pr = zeros(numSimulations, 1);

% Loop to generate random coordinates and calculate distances
for n = 1:numSimulations
    % Generate random coordinates for Tx and Rx within a 10x10 square
    xy_Tx(n, :) = 10 * rand(1, 2);
    xy_Rx(n, :) = 10 * rand(1, 2);
    
    % Calculate the Euclidean distance between Tx and Rx
    d(n) = sqrt((xy_Tx(n, 1) - xy_Rx(n, 1))^2 + (xy_Tx(n, 2) - xy_Rx(n, 2))^2);
    
    % Calculate received power using the Friis equation
    % Correct the order of operations in the Friis equation
    Pr(n) = Pt * Gt * Gr * (lambda / (4 * pi * d(n)))^2;
end

% Plot the histogram of distances
figure(1);
hist(d, 0:0.1:15); % Adjust the bin size and range as needed
grid on;
xlabel('Distance');
ylabel('Frequency');
title('Distribution of Distance Between Tx-Rx Pairs');

% Plot the histogram of received power
figure(2);
hist(Pr, 0:0.001:0.01); % Adjust the bin size and range as needed
grid on;
xlabel('Received Power (W)');
ylabel('Frequency');
title('Distribution of Received Power Using Friis Equation');
