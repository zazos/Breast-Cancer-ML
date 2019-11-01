function model = svm(X, Y)
    % svm classifier
    model = fitcsvm(X, Y, 'Cost', [0 0.25; 0.75 0], 'KernelFunction', 'gaussian');
end