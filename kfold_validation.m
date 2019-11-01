function stats = kfold_validation(data, classifier, k)
    % performs a k-fold cross-validation on the data 
    % using the model of the classifier (class)
    % and lastly computes and returns stats for the classification
    
    rows = size(data, 1);
    stats = zeros(1, 4);
    ceiling = ceil(rows/k);
    
    % for each data partition
    for i=1:ceiling:rows
        
        % get training, test and result sets for this partition
        
        [rows, columns] = size(data);
        floor = min(i + ceiling - 1, rows);
        
        % trainSet's data, except testSet's
        trainSet = data;
        trainSet(i:floor, :) = [];
        
        % testSet's data
        testSet = data(i:floor, :);
        
        % result has the class attribute (the last column)
        result = transpose(testSet(:, columns));
        testSet = testSet(:, 1:columns-1);
        
        % pass sets to classifier and get the result of the model
        model_result = transpose(predict(train_model(trainSet, classifier), testSet));
        
        % compare it with the actual result
        stats = stats + get_stats(model_result, result);
    end
end