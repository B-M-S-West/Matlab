close all;
clear all;
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

Fs = 32768;
t = 0:1/Fs:0.25;
y1 = sin(2*pi*fr(k)*t);
y2 = sin(2*pi*fc(j)*t);
y = (y1 + y2)/2;

sound(y,Fs)



n = length(y);
t = (0:n-1)/Fs

p = abs(fft(y));
f = (0:n-1)*(Fs/n);
plot(f,p);
axis([500 1700 0 600])

fftgui(y)