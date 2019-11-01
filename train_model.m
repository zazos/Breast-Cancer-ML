function model = train_model(trainSet, classifier)
    % training a model of the classifier with trainSet and testSet
    % then returns the result of the classification

    train_columns = size(trainSet, 2);
    
    % organize attributes to pass them into the classifier
    X = trainSet(:, 1:train_columns-1);
    Y = trainSet(:, train_columns);
    
    % after training, get the model of the classifier
    model = classifier(X, Y);        
end