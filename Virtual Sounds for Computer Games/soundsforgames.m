%% This program is used to test our output and input of sound
close all;
clear all;

AI = analoginput('winsound');
addchannel(AI,1);
Fs = 16000; %sampling rate
set(AI,'SampleRate',Fs);
duration = 5;
set(AI,'SamplesPerTrigger',duration*Fs);
start(AI);

fr = [697 770 852 941];
fc = [1209 1336 1477];

s=55;    %48-60 works

switch s
case '*', k = 4; j = 1;
case '0', k = 4; j = 2;
case '#', k = 4; j = 3;
otherwise,
d = s-'0'; j = mod(d-1,3)+1; k = (d-j)/3+1;
end

Fs = 16000;
t = 0:1/Fs:0.25;
y1 = sin(2*pi*fr(k)*t);
y2 = sin(2*pi*fc(j)*t);
y = (y1 + y2)/2;

sound(y,Fs)
data = getdata(AI);
delete(AI);
pause(2);
disp('done');
sound(data,Fs);