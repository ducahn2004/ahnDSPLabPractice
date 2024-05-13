% khoi tao tin hieu x(n)
n=0:100; x= sin(2*pi.*n/3);
L= length(x);
% tinh FFT voi 512 gia tri,
%hay chia khoang [0, 2pi] thanh 512 phan
N=512;
X= fft(x,N); %tinh X(w)
% tinh pho bien do va pho pha
mag_X = abs(X)/L;
phase_X = angle(X)*180/pi;
subplot(3,1,1); plot(n,x,"r","LineWidth",2);
title("tin hieu trong mien thoi gian x(n)")
w=[0:2*pi/N:2*pi]; % ve trong khoang [0, 2pi]
subplot(3,1,2);plot(w(1:end-1), mag_X, "LineWidth",2);
grid; title("Pho bien do cua x(n)");
subplot(3,1,3); plot(w(1:end-1), phase_X,"LineWidth",2);
grid; title("Pho pha cua x(n)");