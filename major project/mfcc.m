function r = mfcc(s, fs)
% MFCC
%
% Inputs: s  contains the signal to analize
%         fs is the sampling rate of the signal
%
% Output: r contains the transformed signal
%
%
%%%%%%%%%%%%%%%%%%
%
% 

m = 100; % Overlapping
n = 256; % N point FFT
l = length(s);

%%framing
nbFrame = floor((l - n) / m) + 1;

for i = 1:n
    for j = 1:nbFrame
        M(i, j) = s(((j - 1) * m) + i);
    end
end

%size(M)

%%windowing
h = hamming(n);

M2 = diag(h) * M;

%%fft calculation
for i = 1:nbFrame
    frame(:,i) = fft(M2(:, i));
end

t = n / 2;
tmax = l / fs;

%%filter banks
m = melfb(20, n, fs);
%plot(m);
n2 = 1 + floor(n / 2);
z = m * abs(frame(1:n2, :)).^2;

%%dct calculation
r = dct(log(z));

%melceps=r;
%plot(r);

