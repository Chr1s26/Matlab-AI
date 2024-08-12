clear all;
close all;

% Define source nodes
s = [1 1 1 1 1 2 2 2 3 3 4 5 ];
% Define target nodes
t = [2 3 4 5 6 3 4 6 4 5 5 6 ];
% Define edge weights
weight = [100 120 130 150 80 60 90 50 150 180 200 30];
% Define node names
nName = {'Bangkok' 'Pattaya' 'Huahin' 'Ayutthaya' 'Kanchanaburi' 'Suphanburi'}';

% Create graph
G = graph(s, t, weight);

% Plot the graph with edge labels and node labels
plot(G, 'EdgeLabel', G.Edges.Weight, 'NodeLabel', nName);

% Define positions for nodes (optional)
%x = [0 0.5 -0.5 -0.5 0.5 0 1.5 0 2 -1.5 -2];
%y = [0 0.5 0.5 -0.5 -0.5 2 0 -2 0 0 0];

% Plot the graph with specified positions for nodes

%plot(G, 'XData', x, 'YData', y, 'EdgeLabel', G.Edges.Weight, 'NodeLabel', nName);