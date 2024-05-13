clc;
close all;


n = -3 :2 ;
x = [2 1 -2 4 1 4];



n = -10 : 10;
n0 = 5;
delta_sig = [(n - n0) == 0];
figure;

stem(n, delta_sig, "Linewit")
