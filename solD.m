clc; clear;

dimensions = 3;
AmountOfPoints = 6;

X = calcAB(dimensions,AmountOfPoints);
Xt = transpose(X);
A = X*Xt;
disp(A)

numerators = [];
sumRestNotii = 0;
currentNumerator = 0;
for i=1:dimensions
    for j=1:dimensions
        if i == j
            continue;
        end
        sumRestNotii = sumRestNotii + abs(A(i,j)); 
    end
currentNumerator = abs(A(i,i)) - sumRestNotii;  
numerators = [numerators; currentNumerator];
currentNumerator = 0;
sumRestNotii = 0;
end
minNum = min(numerators);
index = find(numerators == minNum);
alpha = minNum./abs((A(index,index)));
disp(alpha)

