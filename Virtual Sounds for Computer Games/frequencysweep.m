clear all;
close all;
t=0:0.0001:10;
f0=0;
t1=1;
f1=50;

data = chirp(t,f0,t1,f1,'linear');
spectrogram(data,256,250,256,1E3,'yaxis') 
figure(2)
plot(data)

AI = analoginput('winsound');
addchannel(AI,1);
Fs = 16000; %sampling rate
set(AI,'SampleRate',Fs);
duration = 20;
set(AI,'SamplesPerTrigger',duration*Fs);
start(AI);

sound(data,1000);
data1 = getdata(AI);

stop(AI);
delete(AI);

%plot(data);
figure(3);
plot(data1);

%plot of amplitude vs frequency
f = linspace(1,20000,20*16000);
figure(4);
plot(f,data1);

%% Generates a tone of frequency tonefreq

% clear all;
% 
% Fs = 100000;
% tonefreq = 10000;
% nseconds = 2;
% y = sin(linspace(0,nseconds*tonefreq*2*pi,round(nseconds*Fs))); 
% sound(y,Fs);