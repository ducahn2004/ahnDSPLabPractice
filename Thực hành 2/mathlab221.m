% khoi tao 2 tin hieu bat ky
x1=[-2, 1,4,2,0,1]; n1=[-3:2];
x2=[2,2,-1,1,0,0,1,4]; n2=[-1:6];
% goi ham cong tin hieu vua khai bao o tren:
[y,n] = sig_add(x1,n1,x2,n2);
subplot(3,1,1); stem(n1,x1, "LineWidth",2);
xlim([min(n)-1,max(n)+1]); ylim([-5,10]);
title("x1(n)");
subplot(3,1,2); stem(n2,x2, "LineWidth",2);
xlim([min(n)-1,max(n)+1]);ylim([-5,10]);
title("x1(n)");
subplot(3,1,3); stem(n,y,"r", "LineWidth",2);
xlim([min(n)-1,max(n)+1]);ylim([-5,10]);
title("x1(n)+x2(n)");