function stats = get_stats(model_result, result)
    % the classification result (model_result) is being compared
    % with the actual results
    
    true_positive = 0;
    true_negative = 0;
    false_positive = 0;
    false_negative = 0;
    
    % for each record
    for i=1:size(model_result, 2)
        
        % if classification was correct
        if(model_result(i) == result(i))
            if(model_result(i) == 2)
                true_negative = true_negative + 1;
            else
                true_positive = true_positive + 1;
            end
        % else if classification was incorrect
        else
            if(model_result(i) == 2)
                false_negative = false_negative + 1;
            else
                false_positive = false_positive + 1;
            end
        end
    end
    stats = [true_positive, true_negative, false_positive, false_negative];
end