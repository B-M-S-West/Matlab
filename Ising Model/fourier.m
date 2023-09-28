close all;
clear all;
npoints=10000;
x=linspace(0,2*pi,npoints);
figure('position',[50 50 700 700])
f=zeros(1,npoints);
xs=[-1 0 0 pi pi 2*pi 2*pi 2*pi+1];
ys=[-1 -1 1 1 -1 -1 1 1];
for n=1:2:500
  term=sin(n*x)*(4/(n*pi));
    f=f+term;
    clf;
    plot(x,f,'k-');
    xlim([-1 2*pi+1]);
    ylim([-1.6 1.6]);
    title(['n=',num2str(n)]);
    hold on
    plot(xs,ys,'r-');
    plot(x,term,'g-');
    if n<16
%        pause(.1)
        cont=input('')
    else
        pause(0.01)
    end
end