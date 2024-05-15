L = 256; % Chiều dài của cửa sổ

% Sử dụng hàm boxcar
boxcar_window = boxcar(L);
subplot(3,2,1);
plot(boxcar_window);
title('Boxcar Window');

% Sử dụng hàm rectwin
rectwin_window = rectwin(L);
subplot(3,2,2);
plot(rectwin_window);
title('Rectangular Window');

% Sử dụng hàm bartlett
bartlett_window = bartlett(L);
subplot(3,2,3);
plot(bartlett_window);
title('Bartlett Window');

% Sử dụng hàm hanning
hanning_window = hanning(L);
subplot(3,2,4);
plot(hanning_window);
title('Hanning Window');

% Sử dụng hàm hamming
hamming_window = hamming(L);
subplot(3,2,5);
plot(hamming_window);
title('Hamming Window');

% Sử dụng hàm blackman
blackman_window = blackman(L);
subplot(3,2,6);
plot(blackman_window);
title('Blackman Window');