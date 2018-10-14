function test(testdir,n,code)
rda=[];
da=[];
for k = 1:n  % read test sound file of each speaker 
  file = sprintf('%ss%d.wav',testdir, k);
  [s, fs] = audioread(file);
  v = mfcc(s, fs);  % Compute MFCC's
  
  distmin = inf;
  k1 = 0;
  count=1;
  fprintf('\n');
  rdv=[];
  dv=[];
  for l = 1:length(code) % for each trained codebook, compute distortion 
    d = disteu(v, code{l});
    dist = sum(min(d,[],2)) / size(d,1);
    if count==1
      rdv=round(dist);
      dv=dist;
    else
     rdv=[rdv round(dist)];
     dv=[dv dist];
    end
    fprintf('Eucledian Distance between speaker %i and speaker %i is: %d\n',k,count,dist);
    if dist < distmin
       distmin = dist;
       k1 = l;
    end
   count=count+1;
  end
  rda=[da;rdv];
  da=[da;dv];
  
  fprintf('\n');
  subplot(3,3,k);
  x=linspace(1,8,8);
  y=rdv(x);
  plot(x,y);
  title(['Speaker' num2str(k) ]);
  xlabel('Speakers');
  ylabel('distance');
  zlabel(['Speaker' num2str(k) ]);
%   if k1==k
%   threshold=1.65;
%   if distmin<threshold
    msg = sprintf('Speaker %d matches with speaker %d', k, k1);
%   else
%     msg = sprintf('Exceeds Threshold value');
%   end  
%   else
%   msg= sprintf('wrong match');
%   end
  disp(msg);
end
fprintf('\nDistance matrix is:\n');
disp(da);
% plot(rda);
