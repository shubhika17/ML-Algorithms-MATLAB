% Input: number of iterations L
% matrix X of features, with n rows (samples), d columns (features)
% X(i,j) is the j-th feature of the i-th sample
% vector y of labels, with n rows (samples), 1 column
% y(i) is the label (+1 or -1) of the i-th sample
% Output: vector alpha of n rows, 1 column
function alpha = kerperceptron(L,X,y)
t = length(y);
size2 = size(X);
alpha = zeros(size2(1,1),1);
for c = 1:L
    for z = 1:t
        sum = 0;        
        for i = 1: t
            sum = sum + alpha(i)*y(i)*(K(X(i,:),X(z,:)));
        end
        if y(z)*(sum) <= 0
            alpha(z) = alpha(z) + 1;
        end 
    end 
end 