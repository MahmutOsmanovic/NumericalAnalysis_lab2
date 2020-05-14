function sumOfDistance = func(x)
% Computes sum of distances. Points are stored as columns in x.
[~, points] = size(x);
sumOfDistance = 0;
    for i=1:points
        for j=i+1:points
            sumOfDistance = sumOfDistance + norm(x(:,i) - x(:,j));
        end
    end
sumOfDistance = -sumOfDistance;    
end

