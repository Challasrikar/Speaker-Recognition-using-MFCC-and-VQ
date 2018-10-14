disp('---------------------------------');
disp('SPEAKER RECOGNITION SYSTEM');
disp('TRAINING PHASE');
traindir = 'C:\Users\akshay\Desktop\voicerecog\traindir\';
[code,melceps] = train(traindir,8); %training phase
disp('TESTING PHASE');
testdir = 'C:\Users\akshay\Desktop\voicerecog\testdir\';
test(testdir,8,code); %testing phase
