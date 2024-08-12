
branching_factors = [2, 3, 10];
max_depth = 20;


number_of_nodes = zeros(max_depth + 1, length(branching_factors));


for i = 1:length(branching_factors)
    b = branching_factors(i);
    for d = 0:max_depth
        number_of_nodes(d + 1, i) = b^d;
    end
end

disp('Number of nodes from depth 0 to 20:')
for i = 1:length(branching_factors)
    fprintf('Branching factor %d:\n', branching_factors(i));
    for d = 0:max_depth
        fprintf('Depth %d: %d nodes\n', d, number_of_nodes(d + 1, i));
    end
    fprintf('\n');
end
