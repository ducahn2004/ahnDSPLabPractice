% chia khoang [-10, 10] thanh cac khoang deu nhau 0.01
t=-10:0.01:10;
% xac dinh gia tri cua x tai cac moc lay mau
x = sin(pi*t/3);
% dung plot de ve tin hieu lien tuc
plot(t,x, "LineWidth",2);