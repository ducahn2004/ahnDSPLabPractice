% Ví dụ: Phân tích đa thức H(z) = z^4 + 2z^3 + 3z^2 + 4z + 5
b = [1, 5, -4, 2];
a = [1, -2, 4, -3];

%% Phân tích đa thức ở tử số 
poles_b = roots(b);
poles_b = cplxpair(poles_b);
N = length(poles_b);
if mod(N,2)== 0
    number_items = N/2;
else 
    number_items = floor(N/2)+1;
    poles_b(N+1)=0;
end
%Khoi tao bien luu he so
HS = zeros(number_items, 3);
count = 1;
for i = 1:2:N
    HS(count,:) = poly([poles_b(i),poles_b(i+1));
    count = count+1;
end

%% Phân tích đa thức thành tổng các đa thức có bậc nhỏ hơn 2 
[r,p,k] = residuez(b,a);
% Nhóm các điểm cực
poles = cplxpair(p);
% Lưu lại vị trí cập nhật mới của các điểm cực 
[temp, new_index] = ismember(poles,p);
% Cập nhật vị trí của hệ số r sau khi thay đổi vị trí của các điểm cực
% trong p
r = r(new_index);
%Xác định số lượng đa thức có thể phân tích 
N = length(poles);
if mod(N,2)== 0
    number_items = N/2;
else 
    number_items = floor(N/2)+1;
    poles_b(N+1)=0; %Thêm số lượng điểm để thoả mãn điều kiện sử dụng 
    r(N+1) = 0;
end
%Tính các hệ số của đa thức sau khi phân tích 
TS = zeros(number_items,2);
MS = zeros(number_items,3);
count = 1;
for i = 1:2:N
    TS(count, :) = [r(i)+r(i+1), - (r(i)*poles(i+1)+r(i+1)*poles(i))];
    MS(count, :) = poly([poles(i),poles(i+1)]);
end