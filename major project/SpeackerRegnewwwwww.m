function varargout = SpeackerReg(varargin)
% SPEACKERREG M-file for SpeackerReg.fig
%SPEACKERREG, by itself, creates a new SPEACKERREG or raises the existing
%singleton*.
%
%H = SPEACKERREG returns the handle to a new SPEACKERREG or the handle to
%the existing singleton*.
%
%SPEACKERREG('CALLBACK',hObject,eventData,handles,...) calls the local
%function named CALLBACK in SPEACKERREG.M with the given input arguments.
%
%SPEACKERREG('Property','Value',...) creates a new SPEACKERREG or raises the
%existing singleton*.  Starting from the left, property value pairs are
%applied to the GUI before SpeackerReg_OpeningFcn gets called.  An
%unrecognized property name or invalid value makes property application
%stop.  All inputs are passed to SpeackerReg_OpeningFcn via varargin.
%
%*See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SpeackerReg

% Last Modified by GUIDE v2.5 02-Jul-2011 13:30:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name', mfilename, ...
 'gui_Singleton',  gui_Singleton, ...
 'gui_OpeningFcn', @SpeackerReg_OpeningFcn, ...
 'gui_OutputFcn',  @SpeackerReg_OutputFcn, ...
 'gui_LayoutFcn',  [] , ...
 'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before SpeackerReg is made visible.
function SpeackerReg_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SpeackerReg (see VARARGIN)

% Choose default command line output for SpeackerReg
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SpeackerReg wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SpeackerReg_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
function varargout = SpeackerReg(varargin)
% SPEACKERREG M-file for SpeackerReg.fig
%SPEACKERREG, by itself, creates a new SPEACKERREG or raises the existing
%singleton*.
%
%H = SPEACKERREG returns the handle to a new SPEACKERREG or the handle to
%the existing singleton*.
%
%SPEACKERREG('CALLBACK',hObject,eventData,handles,...) calls the local
%function named CALLBACK in SPEACKERREG.M with the given input arguments.
%
%SPEACKERREG('Property','Value',...) creates a new SPEACKERREG or raises the
%existing singleton*.  Starting from the left, property value pairs are
%applied to the GUI before SpeackerReg_OpeningFcn gets called.  An
%unrecognized property name or invalid value makes property application
%stop.  All inputs are passed to SpeackerReg_OpeningFcn via varargin.
%
%*See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SpeackerReg

% Last Modified by GUIDE v2.5 02-Jul-2011 13:30:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name', mfilename, ...
 'gui_Singleton',  gui_Singleton, ...
 'gui_OpeningFcn', @SpeackerReg_OpeningFcn, ...
 'gui_OutputFcn',  @SpeackerReg_OutputFcn, ...
 'gui_LayoutFcn',  [] , ...
 'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before SpeackerReg is made visible.
function SpeackerReg_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SpeackerReg (see VARARGIN)

% Choose default command line output for SpeackerReg
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SpeackerReg wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SpeackerReg_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');

% Play back the recording.
play(recObj);

% Store data in double-precision array.
myRecording = getaudiodata(recObj);
save file1 recObj
x=rand(3);
y=rand(2);
% Plot the waveform.
fs=16000;
plot(myRecording);
handles.myRecording=myRecording;
r1 = mfcc(myRecording, fs);
P= r1(1,1:11);
T = [0 1 2 3 4 3 2 1 2 3 4];
net = newff(P,T,5);
y1 = sim(net,P);
figure
plot(P,T,P,y1,'o');hold on
net.trainParam.epochs = 50;
net = train(net,P,T);
y1 = sim(net,P);
plot(P,T,P,y1,'o');title('First Record NN')

handles.recObj = recObj;
handles.x=x;
handles.y=y;
handles.y1=y1;
guidata(hObject, handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
recObj1 = audiorecorder;
disp('Start speaking.')
recordblocking(recObj1, 5);
disp('End of Recording.');

% Play back the recording.
play(recObj1);
fs=16000;
% Store data in double-precision array.
myRecording1 = getaudiodata(recObj1);
r2 = mfcc(myRecording1, fs);
P= r2(1,1:11);
T = [0 1 2 3 4 3 2 1 2 3 4];
net = newff(P,T,5);
y2 = sim(net,P);
figure
plot(P,T,P,y2,'o');hold on
net.trainParam.epochs = 50;
net = train(net,P,T);
y2 = sim(net,P);
plot(P,T,P,y2,'o');title('Second Record NN')


save file2 recObj1
% Plot the waveform.
plot(myRecording1);
handles.y2=y2;
handles.recObj1 = recObj1;
handles.myRecording1=myRecording1;
guidata(hObject, handles);



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
recObj = handles.recObj;
recObj1 = handles.recObj1;
x=handles.x;
y=handles.y;
y1=handles.y1;
y2=handles.y2;
y=y(1,1);
myRecording=handles.myRecording;
myRecording1=handles.myRecording1;
w1=myRecording+sum(sum(y1));
[M N] = size(w1);
MSE1 = y*sum(sum(w1.^2))/(M*N);
PSNR1 = 10*log10(255*255/MSE1);
v1 = Entropy(w1);
disp('MSE1 ='),disp(MSE1(:,:,1));
disp('PSNR1 ='),disp(PSNR1(:,:,1));
disp('Entropy1 ='),disp(v1);
w2=myRecording1+sum(sum(y2));
[M N] = size(w2);
MSE2 = y*sum(sum(w2.^2))/(M*N);
PSNR2 = 10*log10(255*255/MSE2);
v2 = Entropy(w2);
disp('MSE2 ='),disp(MSE2(:,:,1));
disp('PSNR2='),disp(PSNR2(:,:,1));
disp('Entropy2 ='),disp(v2);
cmp=v1-v2;
disp('cmp ='),disp(cmp);
if cmp<0.15 & cmp>=0
    disp('Fake Speaker Verification Failed')
    helpdlg('Fake Speaker Verification Failed')
else
    disp('Original Speaker Verified')
    helpdlg('Original Speaker Verified')
end
% disp('cmp')
% disp(cmp);



% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fname=uigetfile;
[data,Fs] = audioread(fname);

% Play back the recording.
sound(data,fs);

% Store data in double-precision array.
myRecording = data;
%save file1 recObj
x=rand(3);
y=rand(2);
% Plot the waveform.
fs=16000;
plot(myRecording);
handles.myRecording=myRecording;
r1 = mfcc(myRecording, fs);
P= r1(1,1:11);
T = [0 1 2 3 4 3 2 1 2 3 4];
net = newff(P,T,5);
y1 = sim(net,P);
figure
plot(P,T,P,y1,'o');hold on
net.trainParam.epochs = 50;
net = train(net,P,T);
y1 = sim(net,P);
plot(P,T,P,y1,'o');title('First Record NN')

handles.data = data;
handles.x=x;
handles.y=y;
handles.y1=y1;
guidata(hObject, handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
recObj1 = audiorecorder;
disp('Start speaking.')
recordblocking(recObj1, 5);
disp('End of Recording.');

% Play back the recording.
play(recObj1);
fs=16000;
% Store data in double-precision array.
myRecording1 = getaudiodata(recObj1);
r2 = mfcc(myRecording1, fs);
P= r2(1,1:11);
T = [0 1 2 3 4 3 2 1 2 3 4];
net = newff(P,T,5);
y2 = sim(net,P);
figure
plot(P,T,P,y2,'o');hold on
net.trainParam.epochs = 50;
net = train(net,P,T);
y2 = sim(net,P);
plot(P,T,P,y2,'o');title('Second Record NN')


save file2 recObj1
% Plot the waveform.
plot(myRecording1);
handles.y2=y2;
handles.recObj1 = recObj1;
handles.myRecording1=myRecording1;
guidata(hObject, handles);



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
recObj = handles.recObj;
recObj1 = handles.recObj1;
x=handles.x;
y=handles.y;
y1=handles.y1;
y2=handles.y2;
y=y(1,1);
myRecording=handles.myRecording;
myRecording1=handles.myRecording1;
w1=myRecording+sum(sum(y1));
[M N] = size(w1);
MSE1 = y*sum(sum(w1.^2))/(M*N);
PSNR1 = 10*log10(255*255/MSE1);
v1 = Entropy(w1);
disp('MSE1 ='),disp(MSE1(:,:,1));
disp('PSNR1 ='),disp(PSNR1(:,:,1));
disp('Entropy1 ='),disp(v1);
w2=myRecording1+sum(sum(y2));
[M N] = size(w2);
MSE2 = y*sum(sum(w2.^2))/(M*N);
PSNR2 = 10*log10(255*255/MSE2);
v2 = Entropy(w2);
disp('MSE2 ='),disp(MSE2(:,:,1));
disp('PSNR2='),disp(PSNR2(:,:,1));
disp('Entropy2 ='),disp(v2);
cmp=v1-v2;
disp('cmp ='),disp(cmp);
if cmp<0.15 & cmp>=0
    disp('Fake Speaker Verification Failed')
    helpdlg('Fake Speaker Verification Failed')
else
    disp('Original Speaker Verified')
    helpdlg('Original Speaker Verified')
end
% disp('cmp')
% disp(cmp);



% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;clear all;close all
