function [c, ceq] = constr(x)
%Condition set by the norm(x(:,1))=1 for all i
c =[];
[~,n] = size(x);
ceq = zeros(1,n);
    for i=1:n
        ceq(i) = norm(x(:,i))-1;
    end    
end

