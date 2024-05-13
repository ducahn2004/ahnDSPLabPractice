t=[-3:0.01:2]; x=sin(pi*t/3)+3*cos(pi*t/5);
t_y = t/2;
y=x;
subplot(2,1,1);plot(t, x,"LineWidth", 2);grid;
xlim([min(t), max(t)]); title("x(t)");
subplot(2,1,2); plot(t_y, y, "r","LineWidth",2); grid;
xlim([min(t), max(t)]);title("x(2t)");