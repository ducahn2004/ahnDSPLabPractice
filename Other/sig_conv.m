function [y n] = sig_conv(a, na, b, nb)
%% tinh tich chap a*b
y = conv(a,b); %%% values
n1= na(1) + nb(1);
n2= na(end) + nb(end);
n = n1:n2; % time index
end