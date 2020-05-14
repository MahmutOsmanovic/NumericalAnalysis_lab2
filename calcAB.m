function result = calcAB(dim,numpts)
ub = 2*ones(dim,numpts); % make the scope of iteration large enough, a little bit large than the rand
lb = -ub;
x0 = zeros(dim, numpts); % starting point is irrelevant, same dim and points give same answer
options = optimset('Algorithm', 'interior-point', 'MaxIter', 2000, 'Display','off');
result = fmincon(@func, x0, [], [], [], [], lb, ub, @constr, options);
end

