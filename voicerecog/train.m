function [code,melceps] = train(traindir, n)
k = 32;
%number of centroids required 
for i = 1:n  %train a VQ codebook for each speaker 
file = sprintf('%ss%d.wav',traindir,i);
disp(file);
[s, fs] = audioread(file);
v = mfcc(s, fs);% Compute MFCC's 
melceps{i} = mfcc(s,fs);
code{i} = vqlbg(v, k);% Train VQ codebook  
%plot(code{i});
end
