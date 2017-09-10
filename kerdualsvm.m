% Input: matrix X of features, with n rows (samples), d columns (features)
% X(i,j) is the j-th feature of the i-th sample
% vector y of labels, with n rows (samples), 1 column
% y(i) is the label (+1 or -1) of the i-th sample
% positive scalar C
% Output: vector alpha of n rows, 1 column
function alpha = kerdualsvm(X,y,C)
len = length(y);
u = zeros(len,1);
f = -1*ones(len,1);
v = ones(len,1);
v = C*v;
H = zeros(len);
for i = 1:length(y)
    for j = 1:length(y)
        H(i,j) = y(i)*y(j)*K(X(i,:),X(j,:));
    end 
end 
alpha = quadprog(H,f,[ ],[ ],[ ],[ ],u,v);