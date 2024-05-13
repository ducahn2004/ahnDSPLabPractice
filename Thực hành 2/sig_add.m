function [y,n] = sig_add(x1,n1,x2,n2)
% Thuc hien: y(n) = x1(n) + x2(n)
n = min(min(n1),min(n2)) : max(max(n1),max(n2)); %duration of y
y1 = zeros(1,length(n));
y2 = zeros(1,length(n));
y1(find((n>=min(n1)) & (n<=max(n1))==1)) = x1;
y2(find((n>=min(n2)) & (n<=max(n2))==1)) = x2;
y = y1 + y2;