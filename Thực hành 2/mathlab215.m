t=0:0.01:2;
x = t; % khai bao 1 xung tam giac
x1=[x x x x x x x]; % plot 7 chu ky
t1=0:0.01:14; % tinh toan truc thoi gian cua 7 chu ky
plot(t1,x1(1:length(t1)), "LineWidth",2);
title("xung tam giac");
xlabel("t");