% Input: number of iterations L
% matrix X of features, with n rows (samples), d columns (features)
% X(i,j) is the j-th feature of the i-th sample
% vector y of labels, with n rows (samples), 1 column
% y(i) is the label (+1 or -1) of the i-th sample
% Output: vector theta of d rows, 1 column
function theta = linperceptron(L,X,y)
t = length(y);
size2 = size(X);
theta = zeros(1,size2(1,2));
for c = 1:L
    for z = 1:t
        dotpdct = dot(theta,X(z,:));
        if y(z)*(dotpdct) <= 0
            theta = theta +  y(z)*X(z,:);
        end 
    end 
end 
theta = transpose(theta);
    
        
        
        
