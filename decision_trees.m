function model = decision_trees(X, Y)
    % decision-tree classifier
    model = fitctree(X, Y, 'Cost', [0 0.25; 0.75 0]); 
end