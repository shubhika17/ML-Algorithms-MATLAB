% Input: matrix X of features, with n rows (samples), d columns (features)
% X(i,j) is the j-th feature of the i-th sample
% vector y of labels, with n rows (samples), 1 column
% y(i) is the label (+1 or -1) of the i-th sample
% Output: vector theta of d rows, 1 column
function theta = linprimalsvm(X,y)
size2 = size(X);
H = eye(size2(1,2));
f = zeros(size2(1,2),1);
b = -ones(size2(1,1),1);
A = zeros(size2);
for i = 1:length(y)
    for j = 1:size2(1,2)
        A(i,j) = -y(i)*X(i,j);
    end 
end 
theta =  quadprog(H,f,A,b);


