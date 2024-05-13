x=[2, 1, -1,4, 1, 4];
n=-3:2; % time index\\
stem(n,x, "LineWidth",2); % ham stem de ve tin hieu roi rac
grid; % hien thi grid
xlabel(" n " );
%% de hien thi chi so n la so nguyen:
curtick = get(gca, "XTick");
set(gca, "XTick", unique(round(curtick)));