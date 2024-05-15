[cleanAudio,fs] = audioread("SpeechDFT-16-8-mono-5secs.wav");
sound(cleanAudio,fs);
%Ta co the them tin hieu nhieu vao:
noise = audioread("WashingMachine-16-8-mono-1000secs.wav");
% Tin hieu nhieu rat dai, ta chi lay 1 doan ngau nhien cua no:
ind = randi(numel(noise) - numel(cleanAudio) + 1,1,1);
noiseSegment = noise(ind:ind + numel(cleanAudio) - 1);
% Tinh PSNR cua tin hieu:
speechPower = sum(cleanAudio.^2); % Psignal
noisePower = sum(noiseSegment.^2); % Pnoise
noisyAudio = cleanAudio + ...
sqrt(speechPower/noisePower)*noiseSegment;
sound(noisyAudio, fs);
%Hien thi trong mien thoi gian:
t = (1/fs)*(0:numel(cleanAudio) - 1);
figure(1)
plot(t,noisyAudio);
hold on;
plot(t,cleanAudio)