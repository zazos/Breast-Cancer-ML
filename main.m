function main(database, classifier)
    
    data = xlsread(database);
    
    data = pre_processing(data);
    
    class = str2func(classifier);
    
    classifier_stats = kfold_validation(data, class, 10);
    
    %evaluation(classifier_stats, classifier);
    
    % evaluate the classifier
    true_positive = classifier_stats(1);
    true_negative = classifier_stats(2);
    false_positive = classifier_stats(3);
    false_negative = classifier_stats(4);
    total_records = sum(classifier_stats);
    accuracy = (true_positive + true_negative) / total_records;
    sensitivity = true_positive / (true_positive + false_negative);
    specificity = true_negative / (true_negative + false_positive);
    
    % lastly display the results
    display_results([total_records, classifier_stats, accuracy, sensitivity, specificity], classifier);
end