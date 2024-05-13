% Tạo dữ liệu
vid = linspace(-150, 150, 1000);
vod = f(vid); % Thay thế f(vid) bằng hàm thực tế của bạn

% Vẽ đồ thị
plot(vid, vod, 'b-', 'LineWidth', 1.5);
grid on;
xlabel('VID');
ylabel('VOD');
title('Đặc tuyến truyền đạt V OD = f(VID)');
axis([-150 150 -6 6]);

% Thêm chú thích
text(-140, 4, 'Điểm A', 'FontSize', 10);
text(140, -4, 'Điểm B', 'FontSize', 10);

% Định dạng đồ thị
set(gca, 'FontSize', 12);
set(gcf, 'Color', 'w');

% Hàm ví dụ
function vod = f(vid)
  vod = 0.5 * vid.^2 + 2 * vid - 3;
end