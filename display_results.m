function display_results(results, classifier)
    total_records = results(1);
    true_positive = results(2);
    true_negative = results(3);
    false_positive = results(4);
    false_negative = results(5);
    accuracy = results(6);
    sensitivity = results(7);
    specificity = results(8);
    
    fprintf('Total records: %d\n', total_records);    
    fprintf('\nUsing %s as classifier, we have the following results\n', classifier);
    fprintf('\nAccuracy: %.2f\nSensitivity: %.2f\nSpecificity: %.2f\n', accuracy, sensitivity, specificity);
    fprintf('\nTrue Positive: %d\t True Negative: %d\n', true_positive, true_negative);
    fprintf('False Positive: %d\t False Negative: %d\n', false_positive, false_negative);
end

