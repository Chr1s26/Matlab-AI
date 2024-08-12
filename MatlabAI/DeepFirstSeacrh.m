clear; % Clear previous variables
close all; % Close all figures

% Define structure of tree 1 and tree 2
p1 = [2 0 2]; % Example structure for tree 1
p2 = [2 4 2 0 6 4 6]; % Example structure for tree 2

% Plot tree 1 
figure(1); % Create a new figure for tree 1
treeplot(p1); % Plot the tree starting from node 1
[x1, y1] = treelayout(p1); % Calculate layout for tree 1
text(x1 + 0.02, y1, {'1', '2', '3'}); % Add labels to nodes

% Plot tree 2
figure(2); % Create a new figure for tree 2
treeplot(p2); % Plot the tree starting from node 1 with structure p2
[x2, y2] = treelayout(p2); % Calculate layout for tree 2
text(x2 + 0.02, y2, {'1', '2', '3', '4', '5', '6', '7'}); % Add labels to nodes


p3 = [2 4 2 8 6 4 6 0 10 12 10 8 14 12 14];
figure(3);
treeplot(p3);
[x3,y3] = treelayout(p3);
text(x3 + 0.02,y3,{'1', '2', '3', '4', '5', '6', '7','8','9','10','11','12','13','14','15'});

p3 = [2 4 2 8 6 4 6 0 10 12 10 8 14 12 14];
figure(3);
treeplot(p3);
[x3,y3] = treelayout(p3);
text(x3 + 0.02,y3,{'1', '2', '3', '4', '5', '6', '7','8','9','10','11','12','13','14','15'});

p4 = [2 4 2 8 6 4 6 16 10 12 10 8 14 12 14 0 18 20 18 24 22 20 22 16 26 28 26 24 30 28 30]; % Adjusted structure for tree 4
figure(4); % Create a new figure window
treeplot(p4); % Plot the tree based on the structure defined in p4
[x4, y4] = treelayout(p4); % Calculate the layout positions for the nodes
labels = arrayfun(@num2str, 1:31, 'UniformOutput', false); % Generate labels from '1' to '31'
text(x4 + 0.02, y4, labels); % Add labels to the nodes

