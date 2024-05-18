function h_HP = highpass_filter(wp, ws, Ap, As, window_type)
    % Tính t?n s? c?t trung tâm
    wc = (ws + wp) / 2;
    % Tính t?n s? c?t c?a b? l?c thông th?p t??ng ?ng
    wc_1 = pi - wc;
    if strcmp(window_type, 'Hamming')
        C = 3.21;
    elseif strcmp(window_type, 'Kaiser')
        C = 3.47;
    else
        error('Invalid window type. Please choose either Hamming or Kaiser.');
    end
    L = C * 2 * pi * abs(wp - ws);
    
    n = -(L-1)/2 : (L-1)/2;
    h1_LP = sinc(wc*n) / pi;
    h_HP = (-1).^n .* h1_LP;
end
