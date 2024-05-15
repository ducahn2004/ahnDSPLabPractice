function h = FIRwindow(wp, As)
    % Determine filter length
    L = ceil(3.3*pi / (wp*pi));

    % Create window
    window = hamming(L);

    % Create frequency response array
    w = linspace(0, pi, L);

    % Create frequency response of the filter
    H = zeros(size(w));
    H(w <= wp) = 1;

    % Apply window to the frequency response
    H = H .* window';

    % Convert frequency response to time domain
    h = ifft(ifftshift(H));

    % Normalize the filter
    h = h / max(abs(h));

    % Adjust the stopband attenuation
    h = h * 10^(-As/20);

end