A = [1, 2, 3, 4, 5];
B = [3, 4, 5, 6, 7];

% intersect: Các phần tử chung của A và B
intersection = intersect(A, B); % intersection = [3, 4, 5]

% ismember: Kiểm tra xem các phần tử của A có tồn tại trong B không
inB = ismember(A, B); % inB = [0, 0, 1, 1, 1]

% setdiff: Các phần tử trong A mà không có trong B
diffA = setdiff(A, B); % diffA = [1, 2]

% union: Tất cả các phần tử từ A và B, không có phần tử trùng lặp
unionAB = union(A, B); % unionAB = [1, 2, 3, 4, 5, 6, 7]
