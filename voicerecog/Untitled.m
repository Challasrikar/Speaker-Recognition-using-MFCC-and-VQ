

traindir = 'C:\Users\akshay\Desktop\voicerecog\traindir\';
file = sprintf('%ss%d.wav',traindir, 1);
  [s, fs] = audioread(file);