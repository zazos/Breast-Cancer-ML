function data = pre_processing(data)
    columns = size(data, 2);
    
    % normalize data by dividing by 10 (which is the max value of every
    % column), except 10th column which is the label column
    
    for i = 1:columns-1
        data(:,i) = data(:,i)./10;
    end
    
    for i = 1:columns-1
        % get every row of i-th column
        column = data(:,i);
        
        % mark the most frequent value of that column
        most_frequent = mode(column);
        
        % if current value is NaN, replace it with most frequent
        column(isnan(column)) = most_frequent;
        
        % then replace data's column with the above column
        data(:,i) = column;
        
    end
end