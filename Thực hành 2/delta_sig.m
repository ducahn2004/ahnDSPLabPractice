function [x n] = delta_sig(n0,n1,n2)
%Ham delta(n-n0) , voi n in [n1 n2]; n1<n0<n2
%input n0, n1, n2: la cac so nguyen
n = [n1:n2];
x = [(n-n0)==0];
%hien thi ham delta:
stem(n,x,"LineWidth",2);