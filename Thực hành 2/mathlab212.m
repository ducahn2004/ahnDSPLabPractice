% input: n0, n1, n2, n1< n0< n2\\
% input: n0, n1, n2, n1< n0< n2\\
n=n1:n2; %vector time index\\
x=[(n-n0)==0];
stem(n,x, "LineWidth",2); % ham stem de ve tin hieu roi rac
grid; % hien thi grid
xlabel(" n " );
% de hien thi chi so n la so nguyen:
curtick = get(gca, "XTick");
set(gca,"XTick", unique(round(curtick)));