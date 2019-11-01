function model = knn(X, Y)
    % knn classifier
    % #instances
    instancesNumber = size(X, 1);
    
    k = ceil(sqrt(instancesNumber));
    
    model = fitcknn(X, Y, 'Cost', [0 0.25; 0.75 0]);
    model.BreakTies = 'nearest';
    model.NumNeighbors = k;
    model.Distance = 'euclidean';
    model.DistanceWeight = 'inverse';
end